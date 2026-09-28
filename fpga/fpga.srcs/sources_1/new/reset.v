module reset(
    input wire clk
);

    // Keep one dummy register so Vivado has real sequential logic.
    // It does not drive any external output.
    reg dummy = 1'b0;

    always @(posedge clk) begin
        dummy <= ~dummy;
    end

endmodule