`timescale 1ns / 1ps
module top_SoC(main_clk,pll_reset,core_reset,dac_out);

input main_clk;
input pll_reset,core_reset;
output [7:0] dac_out;

wire locked;
wire core_clk;

clk_wiz_0 uut1
   (
    // Clock out ports
    .clk_out1(core_clk),     // output clk_out1
    // Status and control signals
    .reset(pll_reset), // input reset
    .locked(locked),       // output locked
   // Clock in ports
    .clk_in1(main_clk));
    
rvmyth uut2 (core_clk,core_reset,dac_out);  
    
ila_0 uut3 (
	.clk(main_clk), // input wire clk	 
	.probe0(dac_out), // input wire [7:0]  probe0	
	.probe1(core_reset), // input wire [0:0] probe1
	.probe2(core_clk) // input wire [0:0] probe2
	
);    
    
endmodule
