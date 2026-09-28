// Reset sequencer for the axis_async_packet_fifo wrapper.
// Requires both clocks to run. Each reset request must last at least
// two s_clk periods to guarantee capture by the reset synchronizers.
// Requests must remain asserted until the corresponding clock is stable.
// Uses Xilinx XPM CDC macros; target: Vivado 2022.2 / UltraScale+.
`timescale 1ns / 1ps
`default_nettype none
module biw_fifo_reset_ctrl (
    input wire s_clk,
    input wire s_rst,
    input wire m_clk,
    input wire m_rst,
    input wire wr_rst_busy,
    input wire rd_rst_busy,
    output reg fifo_rst = 1'b0,
    output wire s_run,
    output wire m_run
);
    wire s_request;
    wire m_request_s;
    wire request_s = s_request | m_request_s;

    // Both assertion and deassertion are synchronized to the write clock.
    // INIT=1 ensures a startup reset request even before external resets arrive.
    xpm_cdc_sync_rst #(
        .DEST_SYNC_FF(4), .INIT(1), .INIT_SYNC_FF(1), .SIM_ASSERT_CHK(1)
    ) s_request_sync (
        .src_rst(s_rst), .dest_clk(s_clk), .dest_rst(s_request)
    );
    xpm_cdc_sync_rst #(
        .DEST_SYNC_FF(4), .INIT(1), .INIT_SYNC_FF(1), .SIM_ASSERT_CHK(1)
    ) m_request_sync (
        .src_rst(m_rst), .dest_clk(s_clk), .dest_rst(m_request_s)
    );

    localparam [2:0] QUIET = 0, ASSERT_RESET = 1,
                     WAIT_BUSY_CLEAR = 2, ARM = 3, RUN = 4;
    reg [2:0] state = QUIET;
    reg initial_reset = 1;
    // Sixteen write-clock cycles is a chosen minimum, not a quoted XPM limit.
    reg [4:0] hold_count = 0;
    reg seen_wr_busy = 0;
    reg seen_rd_busy = 0;
    reg pending_reset = 0;
    reg permit_reads = 0;
    wire rd_quiet_s;
    wire rd_busy_s;

    assign s_run = state == RUN && !request_s;

    // Source register plus four destination stages. Return an acknowledgement
    // before asserting FIFO reset, so no read occurs during the reset pulse.
    xpm_cdc_single #(
        .DEST_SYNC_FF(4), .INIT_SYNC_FF(1),
        .SIM_ASSERT_CHK(0), .SRC_INPUT_REG(1)
    ) read_permission_sync (
        .src_clk(s_clk), .src_in(permit_reads),
        .dest_clk(m_clk), .dest_out(m_run)
    );
    xpm_cdc_single #(
        .DEST_SYNC_FF(4), .INIT_SYNC_FF(1),
        .SIM_ASSERT_CHK(0), .SRC_INPUT_REG(1)
    ) read_quiet_sync (
        .src_clk(m_clk), .src_in(!m_run),
        .dest_clk(s_clk), .dest_out(rd_quiet_s)
    );
    xpm_cdc_single #(
        .DEST_SYNC_FF(4), .INIT_SYNC_FF(1),
        .SIM_ASSERT_CHK(0), .SRC_INPUT_REG(1)
    ) read_busy_sync (
        .src_clk(m_clk), .src_in(rd_rst_busy),
        .dest_clk(s_clk), .dest_out(rd_busy_s)
    );

    always @(posedge s_clk) begin
        case (state)
            QUIET: begin
                fifo_rst <= 0;
                permit_reads <= 0;
                hold_count <= 0;
                seen_wr_busy <= 0;
                seen_rd_busy <= 0;
                pending_reset <= 0;
                // Also prevents issuing a new pulse during an old reset cycle.
                if (rd_quiet_s && (initial_reset || (!wr_rst_busy && !rd_busy_s))) begin
                    initial_reset <= 0;
                    fifo_rst <= 1;
                    state <= ASSERT_RESET;
                end
            end
            ASSERT_RESET: begin
                permit_reads <= 0;
                seen_wr_busy <= seen_wr_busy | wr_rst_busy;
                seen_rd_busy <= seen_rd_busy | rd_busy_s;
                if (hold_count < 16)
                    hold_count <= hold_count + 1'b1;
                // Wait for both domains to acknowledge reset, the minimum hold
                // interval, and removal of all external reset requests.
                if (hold_count >= 15 && !request_s &&
                    (seen_wr_busy || wr_rst_busy) &&
                    (seen_rd_busy || rd_busy_s)) begin
                    fifo_rst <= 0;
                    state <= WAIT_BUSY_CLEAR;
                end
            end
            WAIT_BUSY_CLEAR: begin
                fifo_rst <= 0;
                permit_reads <= 0;
                pending_reset <= pending_reset | request_s;
                // Busy LOW here follows observed busy HIGH in both domains.
                if (!wr_rst_busy && !rd_busy_s) begin
                    if (pending_reset || request_s) begin
                        state <= QUIET;
                    end else begin
                        permit_reads <= 1;
                        pending_reset <= 0;
                        state <= ARM;
                    end
                end
            end
            ARM: begin
                // Observe acknowledgement of read permission before allowing
                // RUN. This prevents a stale quiet acknowledgement from being
                // reused if another reset arrives immediately after startup.
                pending_reset <= pending_reset | request_s;
                if (!rd_quiet_s) begin
                    if (pending_reset || request_s) begin
                        permit_reads <= 0;
                        state <= QUIET;
                    end else begin
                        state <= RUN;
                    end
                end
            end
            RUN: begin
                fifo_rst <= 0;
                if (request_s) begin
                    permit_reads <= 0;
                    state <= QUIET;
                end
            end
            default: begin
                permit_reads <= 0;
                fifo_rst <= 0;
                state <= QUIET;
            end
        endcase
    end
endmodule
`resetall
