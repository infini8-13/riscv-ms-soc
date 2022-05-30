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
  
Here, the digital block is the RVMyth RISC-V CPU Core and the analog block is a PLL(Phase Locked Loop). This project aims to integrate these two blocks with the PLL serving as a clock multiplier.

__RVMYTH Core:__ https://github.com/infini8-13/riscv-tlv-core

__PLL:__ https://github.com/vsdip/rvmyth_avsdpll_interface


## Tools

__Makerchip:__  [Makerchip](https://www.makerchip.com/) is a free web-based IDE as well as available as [makerchip-app](https://gitlab.com/rweda/makerchip-app).

__Icarus Verilog:__  [Icarus Verilog](http://iverilog.icarus.com/) is an open-source Verilog compiler used for simulation and synthesis.

__GTKWave:__  [GTKWave](http://gtkwave.sourceforge.net/) is a fully featured GTK+ based wave viewer, also open-source.

__Xilinx Vivado:__  [Xilinx Vivado](https://www.xilinx.com/support/university/vivado.html) delivers a SoC-strength, IP-centric and system-centric, next generation development. This project is developed using Vivado ML Edition 2021.1.

__SandPiper:__ [Sandpiper](https://pypi.org/project/sandpiper-saas/) is a code generator that generates readable, well-structured, Verilog or SystemVerilog code from the given TL-Verilog code.

## RVMyth

## PLL

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


<img src = "https://github.com/vsdip/rvmyth_avsdpll_interface/blob/main/pics/3aa.PNG" width = 700>

## **Verification**
- ### **RTL Integration and Simulation of RVMYTH+PLL**
  Now integrate both rvmyth and avsdpll using a top level testbench and test it to verify.

  1. `iverilog rvmyth_pll_tb.v rvmyth_pll.v clk_gate.v`
  2. `./a.out`
  3. `gtkwave rvmyth_pll.vcd`
  
- ### **FPGA Flow**

<img src = "https://github.com/vsdip/rvmyth_avsdpll_interface/blob/main/pics/4.PNG" width = 700>
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
