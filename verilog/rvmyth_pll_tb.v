`timescale 1ns / 1ps
module rvmyth_pll_tb;
  reg VSSD;
  reg EN_VCO;
  reg VSSA;
  reg VDDD;
  reg VDDA;
  reg VCO_IN;
  reg REF; 
  
  reg reset; 
  wire [7:0] out;

    rvmyth_pll uut ( .VCO_IN(VCO_IN), .VDDA(VDDA), .VDDD(VDDD), .VSSA(VSSA), .VSSD(VSSD), 
.EN_VCO(EN_VCO), .REF(REF), .reset(reset), .out(out));

    initial
    begin
       $dumpfile("rvmyth_pll.vcd");
       $dumpvars(0,rvmyth_pll_tb);
       {REF,EN_VCO}=0;
       VCO_IN = 1'b0 ;
       VDDA = 1.8;
       VDDD = 1.8;
       VSSA = 0;
       VSSD = 0;
       reset = 0;
       #10 EN_VCO = 1;
       #20 reset = 1;
       #100 reset = 0;
    end 
    
    always #100 REF = ~REF;
    always #(83.33/2)  VCO_IN = ~VCO_IN;
    initial #5000000 $finish; 
    
endmodule
