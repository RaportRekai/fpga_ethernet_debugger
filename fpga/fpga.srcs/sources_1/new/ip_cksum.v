`timescale 1ns / 1ps

module ipv4_checksum_add_18 (
    input  wire [15:0] old_ip_checksum,
    output wire [15:0] new_ip_checksum
);

    wire [16:0] sum_1;
    wire [16:0] sum_2;

    // HC' = ~(~HC + 18)
    assign sum_1 =
        {1'b0, ~old_ip_checksum} +
        17'd18;

    // End-around carry
    assign sum_2 =
        {1'b0, sum_1[15:0]} +
        sum_1[16];

    assign new_ip_checksum = ~sum_2[15:0];

endmodule