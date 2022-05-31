# Mixed Signal RISC-V SoC
### Table of Contents
 1. [Introduction-Mixed Signal SoC](https://github.com/infini8-13/riscv-ms-soc#introduction---mixed-signal-soc) <br />
 2. [Tools](https://github.com/infini8-13/riscv-ms-soc#tools) <br />
 3. [RVMyth](https://github.com/infini8-13/riscv-ms-soc#rvmyth) <br />
 4. [PLL Specs](https://github.com/infini8-13/riscv-ms-soc#pll) <br />
 6. [Moving Forward](https://github.com/infini8-13/riscv-ms-soc#moving-forward)
    -  [RVMyth:TL-Verilog to Verilog](https://github.com/infini8-13/riscv-ms-soc#rvmythtl-verilog-to-verilog)
    -  [Designing avsdpll](https://github.com/infini8-13/riscv-ms-soc#designing-avsdpll)
    -  [Verification](https://github.com/infini8-13/riscv-ms-soc#verification)
      -  [RTL Integration and Simulation of RVMYTH+PLL](https://github.com/infini8-13/riscv-ms-soc#rtl-integration-and-simulation-of-rvmythpll)
      -  [FPGA Flow](https://github.com/infini8-13/riscv-ms-soc#fpga-flow)
 7. [References](https://github.com/infini8-13/riscv-ms-soc#references)   
 8. [Acknowledgements](https://github.com/infini8-13/riscv-ms-soc#acknowledgements)

## Introduction - Mixed Signal SoC
Mixed signal SoC is a chip which contains both analog and digital blocks. The designers are adding more analog circuitry and increasing their complexities day by day. Not only that, they also contain digital control logic. As the process nodes shrink, the demand for integration grows. A divide and conquer approach is followed, where the analog and digital structures were dealt with separately. Usually, an analog IP (Intellectual Property) is bought as black- box.  

![mixed_signal_soc](https://user-images.githubusercontent.com/54203063/171225823-ae2dbb9a-650d-429e-b547-6ba32116feaf.jpg)
 
 
Here, the __digital block is the RVMyth RISC-V CPU Core and the analog block is a PLL(Phase Locked Loop)__. This project aims to integrate these two blocks with the PLL serving as a __clock multiplier__.

![elaborated-ip-design](https://user-images.githubusercontent.com/54203063/171231609-e4751e96-c969-4d04-ad93-059999678b35.png)

__RVMYTH Core:__ https://github.com/infini8-13/riscv-tlv-core  
__PLL:__ https://github.com/vsdip/rvmyth_avsdpll_interface


## Tools

__Makerchip:__  [Makerchip](https://www.makerchip.com/) is a free web-based IDE as well as available as [makerchip-app](https://gitlab.com/rweda/makerchip-app).

__Icarus Verilog:__  [Icarus Verilog](http://iverilog.icarus.com/) is an open-source Verilog compiler used for simulation and synthesis.

__GTKWave:__  [GTKWave](http://gtkwave.sourceforge.net/) is a fully featured GTK+ based wave viewer, also open-source.

__Xilinx Vivado:__  [Xilinx Vivado](https://www.xilinx.com/support/university/vivado.html) delivers a SoC-strength, IP-centric and system-centric, next generation development. This project is developed using Vivado ML Edition 2021.1.

__SandPiper:__ [Sandpiper](https://pypi.org/project/sandpiper-saas/) is a code generator that generates readable, well-structured, Verilog or SystemVerilog code from the given TL-Verilog code.

## RVMyth
5 Stage Pipeline RISC-V32I Core written in Transaction Level Verilog(Later converted to Verilog for SoC Integration)
![pipelinedrv](https://user-images.githubusercontent.com/54203063/171229938-27f3fbb0-de0e-4bb2-9e54-23dc228247f7.svg)

## PLL
Phase Locked Loop IP - avsdpll_1x8 - used a multiplier in this SoC and forms the analog block
![avsdpll](https://user-images.githubusercontent.com/54203063/171226167-1898460f-27b4-4ff0-bebd-b424cfae35b4.png)

## **Moving Forward**
To achieve the integration, a verilog block for the PLL should be generated and the output of the PLL is given as an input to the rvmyth. This will create the interface.


## **RVMyth: TL-Verilog to Verilog**
Using Sandpiper to produce Verilog code from TL-V
  1. `git clone https://github.com/shivanishah269/vsdfpga.git`
  2. `cd vsdfpga/verilog`
  3. ` sandpiper-saas -i rvmyth.tlv -o rvmyth.v --iArgs`

## **Designing avsdpll**
  Design a PLL as a clock multiplier using verilog and test the functionality.([PLL IP](https://github.com/vsdip/rvmyth_avsdpll_interface))

  1. `iverilog avsd_pll_1v8.v pll_tb.v`
  2. `./a.out`
  3. `gtkwave test.vcd`

## **Verification**
- ### **RTL Integration and Simulation of RVMYTH+PLL**
  Now integrate both rvmyth and avsdpll using a top level testbench and test it to verify.

  1. `iverilog rvmyth_pll_tb.v rvmyth_pll.v clk_gate.v`
  2. `./a.out`
  3. `gtkwave rvmyth_pll.vcd`
  ![gtk_rvmyth_pll_digital_1](https://user-images.githubusercontent.com/54203063/171226604-6a2adaa3-f737-4aa4-8846-cdba786291ff.png)
  **Waveform Output**
  
  ![gtk_rvmyth_pll_analog](https://user-images.githubusercontent.com/54203063/171226671-927b7172-3ee9-41c0-8379-ab4a64d11dbb.png) 
  **Output Waveform in Analog-Depicting the test program**
  
- ### **FPGA Flow**
  This flow involves RTL simulation(similar to above) in Vivado, beginning with IP Generation for the PLL and waveform interface as **Clocking Wizard and Integrated     Logic Analyser(ILA) IPs**, respectively. Clocking Wizard generates HDL source code to configure a clock circuit to according our requirements specified in the source   code, in our case a PLL acting as a clock multiplier. Next in the pipeline comes synthesis and implementation for the target Zedboard. Implementation involves         optimization, placing and routing. It also involves checking of timing constraints.
  
  ![elaborated-ip-design](https://user-images.githubusercontent.com/54203063/171230868-d039b5a1-8b5a-417c-bb0a-c87a52a8e9ab.png)
  
  ![clkwizard](https://user-images.githubusercontent.com/54203063/171230984-1e57d211-b6e9-4cca-b595-f17f7eb5bb48.png)
  
  ![ILA](https://user-images.githubusercontent.com/54203063/171230995-f17544fb-e1d2-4a00-8570-75afc2ddf69c.png)
  
  ![clk_multi](https://user-images.githubusercontent.com/54203063/171231130-06bd5d52-05a9-4dc2-b983-125d58218a84.png)
  
  ![dac_contin](https://user-images.githubusercontent.com/54203063/171231276-2948b528-73b9-46a6-b82e-4c15301b2d7e.png)
  
  ![design](https://user-images.githubusercontent.com/54203063/171231464-502de87f-8b31-4558-b4ef-00c891758179.png)
  


<!---
The next step involves implementing PNR, using OPENLane and Sky130, which currently abstracted in this repo. Refer [rvmyth_avsdpll_interface](https://github.com/vsdip/rvmyth_avsdpll_interface) for more detailed explanation of this step
-->

## References
1. https://github.com/infini8-13/riscv-tlv-core
2. https://github.com/vsdip/rvmyth_avsdpll_interface
3. https://github.com/shivanishah269/vsdfpga
4. https://github.com/vsdip/vsdmixedsignalflow

## Acknowledgements
- Shivani Shah, IIIT Bangalore.
- [Kunal Ghosh](https://github.com/kunalg123), Co-founder, VSD Corp. Pvt. Ltd.
- [Steve Hoover](https://github.com/stevehoover), Founder, Redwood EDA
