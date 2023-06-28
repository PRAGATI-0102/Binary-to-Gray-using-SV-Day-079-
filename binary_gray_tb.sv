`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/27/2023 10:55:09 PM
// Design Name: 
// Module Name: binary_gray_tb
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
// 
//////////////////////////////////////////////////////////////////////////////////


module binary_gray_tb();

     parameter N = 4;
    
      logic [N-1:0] bin;
      logic [N-1:0] gray;
    
      binary_gray #(N) dut (.*);
    
      initial 
      begin
        for (int i=0; i<2**N; i=i+1) begin
          bin = i;
          #5;
        end
        $finish();
      end

endmodule
