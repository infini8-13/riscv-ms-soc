`timescale 1ns / 1ps
module pll_tb();
   
    
  reg VSSD;
  reg EN_VCO;
 
  reg VSSA;
  reg VDDD;
  reg VDDA;
  reg VCO_IN;
  reg REF;
  
  wire CLK;


 avsd_pll_1v8 dut(CLK, VCO_IN, VDDA, VDDD, VSSA, VSSD, EN_VCO, REF);
  
  initial
   begin
   {REF,EN_VCO}=0;
   VCO_IN = 1'b0 ;
   VDDA = 1.8;
   VDDD = 1.8;
   VSSA = 0;
   VSSD = 0;
   
   end
   
   initial
 begin
    $dumpfile("test.vcd");
    $dumpvars(0,pll_tb);
 end
 
   initial
    begin
   // repeat(2)
  //begin
    // EN_VCO = 1;
    //#100 REF = ~REF;
     
    //end
 //repeat(2)
  //begin
    // EN_VCO = 1;
     //#50 REF = ~REF;

     //end

    repeat(400)
  begin
     EN_VCO = 1;
     #100 REF = ~REF;
     #(83.33/2)  VCO_IN = ~VCO_IN;
     
     end
     
      $finish;
    end
endmodule
