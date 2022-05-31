`timescale 1ns / 1ps

module top_SoC_tb();

reg main_clk, pll_reset,core_reset;
wire [7:0] dac_out;

top_SoC uut (main_clk, pll_reset,core_reset,dac_out);

initial
begin
    main_clk = 1'b0;
    pll_reset = 1'b0;
    core_reset = 1'b0;
    
    #10;
    pll_reset = 1'b1;
    #60;
    pll_reset = 1'b0;
    
    #1400;
    core_reset = 1'b1;
    #50;
    core_reset = 1'b0;
end

always #15.15 main_clk = ~main_clk;
initial #5000000 $finish; 

endmodule
