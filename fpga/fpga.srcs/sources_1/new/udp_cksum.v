`timescale 1ns / 1ps

module udp_checksum_update_cfh #(
    parameter [15:0] OLD_DEST_PORT = 16'd4793,
    parameter [15:0] NEW_DEST_PORT = 16'd49112,
    parameter [15:0] EXTRA_LEN     = 16'd18,

    parameter [7:0]  CFH_MSG       = 8'd1,
    parameter [7:0]  TTL           = 8'd4,
    parameter [31:0] LB_ID         = 32'd4,
    parameter [31:0] RDMA_CONFIG   = 32'd4,
    parameter [31:0] HOST_ID       = 32'd4
)(
    input  wire        clk,
    input  wire        rst,

    input  wire [15:0] old_udp_checksum,
    input  wire [31:0] rdma_auth,

    output reg  [15:0] new_udp_checksum
);

    localparam [15:0] CFH_WORD_0 = {CFH_MSG, TTL};

    localparam [15:0] CFH_WORD_1 = LB_ID[31:16];
    localparam [15:0] CFH_WORD_2 = LB_ID[15:0];

    localparam [15:0] CFH_WORD_3 = RDMA_CONFIG[31:16];
    localparam [15:0] CFH_WORD_4 = RDMA_CONFIG[15:0];

    localparam [15:0] CFH_WORD_5 = HOST_ID[31:16];
    localparam [15:0] CFH_WORD_6 = HOST_ID[15:0];


    /*
     * Constant portion of checksum update.
     * Vivado computes this during elaboration.
     */
    localparam [19:0] FIXED_SUM_RAW =
          {4'b0, ~OLD_DEST_PORT}
        + {4'b0,  NEW_DEST_PORT}
        + {4'b0,  EXTRA_LEN}
        + {4'b0,  EXTRA_LEN}
        + {4'b0,  CFH_WORD_0}
        + {4'b0,  CFH_WORD_1}
        + {4'b0,  CFH_WORD_2}
        + {4'b0,  CFH_WORD_3}
        + {4'b0,  CFH_WORD_4}
        + {4'b0,  CFH_WORD_5}
        + {4'b0,  CFH_WORD_6};


    localparam [16:0] FIXED_FOLD_1 =
        {1'b0, FIXED_SUM_RAW[15:0]} +
        FIXED_SUM_RAW[19:16];

    localparam [16:0] FIXED_FOLD_2 =
        {1'b0, FIXED_FOLD_1[15:0]} +
        FIXED_FOLD_1[16];

    localparam [15:0] FIXED_CHECKSUM_CONTRIBUTION =
        FIXED_FOLD_2[15:0];


    /*
     * Pipeline registers
     */

    // Stage 1
    reg [18:0] checksum_sum_reg;
    reg        checksum_disabled_s1;

    // Stage 2
    reg [16:0] fold_stage_1_reg;
    reg        checksum_disabled_s2;

    // Stage 3
    reg [16:0] fold_stage_2_reg;
    reg        checksum_disabled_s3;


    always @(posedge clk)
    begin
        if (rst)
        begin
            checksum_sum_reg       <= 19'd0;
            fold_stage_1_reg       <= 17'd0;
            fold_stage_2_reg       <= 17'd0;

            checksum_disabled_s1   <= 1'b0;
            checksum_disabled_s2   <= 1'b0;
            checksum_disabled_s3   <= 1'b0;

            new_udp_checksum       <= 16'd0;
        end
        else
        begin

            /*
             * ----------------------------------------------------
             * Stage 1
             *
             * Main checksum addition
             * ----------------------------------------------------
             */

            checksum_disabled_s1 <=
                (old_udp_checksum == 16'h0000);

            checksum_sum_reg <=
                  {3'b000, ~old_udp_checksum}
                + {3'b000, FIXED_CHECKSUM_CONTRIBUTION}
                + {3'b000, rdma_auth[31:16]}
                + {3'b000, rdma_auth[15:0]};


            /*
             * ----------------------------------------------------
             * Stage 2
             *
             * First end-around carry fold
             * ----------------------------------------------------
             */

            checksum_disabled_s2 <= checksum_disabled_s1;

            fold_stage_1_reg <=
                {1'b0, checksum_sum_reg[15:0]} +
                checksum_sum_reg[18:16];


            /*
             * ----------------------------------------------------
             * Stage 3
             *
             * Second carry fold
             * ----------------------------------------------------
             */

            checksum_disabled_s3 <= checksum_disabled_s2;

            fold_stage_2_reg <=
                {1'b0, fold_stage_1_reg[15:0]} +
                fold_stage_1_reg[16];


            /*
             * ----------------------------------------------------
             * Output stage
             * ----------------------------------------------------
             */

            if (checksum_disabled_s3)
            begin
                new_udp_checksum <= 16'h0000;
            end
            else if (~fold_stage_2_reg[15:0] == 16'h0000)
            begin
                new_udp_checksum <= 16'hFFFF;
            end
            else
            begin
                new_udp_checksum <= ~fold_stage_2_reg[15:0];
            end

        end
    end

endmodule