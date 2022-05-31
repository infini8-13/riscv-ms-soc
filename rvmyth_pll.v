`include "rvmyth.v"
`include "avsd_pll_1v8.v"
module rvmyth_pll ( VCO_IN, VDDA, VDDD, VSSA, VSSD, EN_VCO, REF,reset, out);
  input VSSD;
  input EN_VCO;
  input VSSA;
  input VDDD;
  input VDDA;
  input VCO_IN;
  input REF; 
  
  input reset; output [7:0] out;
  wire CLK;
  assign VDDA = 3.3;
  assign VDDD = 1.8;
  assign VSSA = 0.0;
  assign VSSD = 0.0;

  rvmyth uut1 ( .clk(CLK), .reset(reset), .out(out));
  
  avsd_pll_1v8 uut2( .CLK(CLK), .VCO_IN(VCO_IN), .VDDA(VDDA), .VDDD(VDDD), 
  .VSSA(VSSA), .VSSD(VSSD), .EN_VCO(EN_VCO), .REF(REF));
  
  endmodule 
