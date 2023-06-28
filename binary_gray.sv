`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/27/2023 10:52:46 PM
// Design Name: 
// Module Name: binary_gray
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


module binary_gray #(
  parameter N = 4)(
  input     wire[N-1:0] bin,
  output    wire[N-1:0] gray);

  assign gray[N-1] = bin[N-1];

  genvar i;
  
  for (i=N-2; i>=0; i=i-1)
    assign gray[i] = bin[i+1] ^ bin[i];
    
endmodule
