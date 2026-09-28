`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/03/2026 11:19:22 PM
// Design Name: 
// Module Name: arbiter
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// data_out_1 has higher priority than data_out_2
// now we need to handle the pause mod and the valid signals
//////////////////////////////////////////////////////////////////////////////////



module w_arbiter #(
parameter ADD_WIDTH = 12, 
parameter DATA_WIDTH = 12)
(
    output reg pause_mod_1,
    output reg pause_mod_2,
    input  valid_1,
    input  valid_2,
    input  [ADD_WIDTH-1:0] address_1,
    input  [ADD_WIDTH-1:0] address_2,
    output reg [ADD_WIDTH-1:0] bram_address,
    output wen,
    input bram_full
    );
    
    assign wen = (valid_1 | valid_2);
    always@(*)
    begin
        if(valid_1 == 1 && valid_2 == 0)
        begin
            bram_address = address_1;
            pause_mod_1 = 0;
            pause_mod_2 = 0;
        end
        else if(valid_1 == 0 && valid_2 == 1)
        begin
            bram_address = address_2;
            pause_mod_1 = 0;
            pause_mod_2 = 0;
        end
        else if(bram_full == 1)
        begin
            bram_address = address_2;
            pause_mod_1 = 1;
            pause_mod_2 = 0;
        end
        else
        begin
            bram_address = address_1;
            pause_mod_1 = 0;
            pause_mod_2 = 1;
        end
    end
endmodule
