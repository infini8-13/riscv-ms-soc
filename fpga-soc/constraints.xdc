set_false_path -hold -from [get_pins uut1/inst/plle2_adv_inst/CLKOUT0] -to [get_pins [list uut3/inst/ila_core_inst/basic_trigger_reg/D \
          {uut3/inst/ila_core_inst/capture_qual_ctrl_2_reg[0]/D} \
          {uut3/inst/ila_core_inst/capture_qual_ctrl_2_reg[1]/D} \
          {uut3/inst/ila_core_inst/capture_qual_ctrl_reg[0]/D} \
          {uut3/inst/ila_core_inst/capture_qual_ctrl_reg[1]/D} \
          {uut3/inst/ila_core_inst/debug_data_in_sync1_reg[0]/D} \
          {uut3/inst/ila_core_inst/debug_data_in_sync1_reg[10]/D} \
          {uut3/inst/ila_core_inst/debug_data_in_sync1_reg[11]/D} \
          {uut3/inst/ila_core_inst/debug_data_in_sync1_reg[12]/D} \
          {uut3/inst/ila_core_inst/debug_data_in_sync1_reg[13]/D} \
          {uut3/inst/ila_core_inst/debug_data_in_sync1_reg[14]/D} \
          {uut3/inst/ila_core_inst/debug_data_in_sync1_reg[15]/D} \
          {uut3/inst/ila_core_inst/debug_data_in_sync1_reg[1]/D} \
          {uut3/inst/ila_core_inst/debug_data_in_sync1_reg[2]/D} \
          {uut3/inst/ila_core_inst/debug_data_in_sync1_reg[3]/D} \
          {uut3/inst/ila_core_inst/debug_data_in_sync1_reg[4]/D} \
          {uut3/inst/ila_core_inst/debug_data_in_sync1_reg[5]/D} \
          {uut3/inst/ila_core_inst/debug_data_in_sync1_reg[6]/D} \
          {uut3/inst/ila_core_inst/debug_data_in_sync1_reg[7]/D} \
          {uut3/inst/ila_core_inst/debug_data_in_sync1_reg[8]/D} \
          {uut3/inst/ila_core_inst/debug_data_in_sync1_reg[9]/D} \
          {uut3/inst/ila_core_inst/debug_data_in_sync2_reg[0]/D} \
          {uut3/inst/ila_core_inst/debug_data_in_sync2_reg[10]/D} \
          {uut3/inst/ila_core_inst/debug_data_in_sync2_reg[11]/D} \
          {uut3/inst/ila_core_inst/debug_data_in_sync2_reg[12]/D} \
          {uut3/inst/ila_core_inst/debug_data_in_sync2_reg[13]/D} \
          {uut3/inst/ila_core_inst/debug_data_in_sync2_reg[14]/D} \
          {uut3/inst/ila_core_inst/debug_data_in_sync2_reg[15]/D} \
          {uut3/inst/ila_core_inst/debug_data_in_sync2_reg[1]/D} \
          {uut3/inst/ila_core_inst/debug_data_in_sync2_reg[2]/D} \
          {uut3/inst/ila_core_inst/debug_data_in_sync2_reg[3]/D} \
          {uut3/inst/ila_core_inst/debug_data_in_sync2_reg[4]/D} \
          {uut3/inst/ila_core_inst/debug_data_in_sync2_reg[5]/D} \
          {uut3/inst/ila_core_inst/debug_data_in_sync2_reg[6]/D} \
          {uut3/inst/ila_core_inst/debug_data_in_sync2_reg[7]/D} \
          {uut3/inst/ila_core_inst/debug_data_in_sync2_reg[8]/D} \
          {uut3/inst/ila_core_inst/debug_data_in_sync2_reg[9]/D} \
          uut3/inst/ila_core_inst/en_adv_trigger_2_reg/D \
          uut3/inst/ila_core_inst/en_adv_trigger_reg/D \
          {uut3/inst/ila_core_inst/ila_trace_memory_inst/D[0]} \
          {uut3/inst/ila_core_inst/shifted_data_in_reg[7][0]_srl8/D} \
          {uut3/inst/ila_core_inst/shifted_data_in_reg[7][1]_srl8/D} \
          {uut3/inst/ila_core_inst/shifted_data_in_reg[7][2]_srl8/D} \
          {uut3/inst/ila_core_inst/shifted_data_in_reg[7][3]_srl8/D} \
          {uut3/inst/ila_core_inst/shifted_data_in_reg[7][4]_srl8/D} \
          {uut3/inst/ila_core_inst/shifted_data_in_reg[7][5]_srl8/D} \
          {uut3/inst/ila_core_inst/shifted_data_in_reg[7][6]_srl8/D} \
          {uut3/inst/ila_core_inst/shifted_data_in_reg[7][7]_srl8/D} \
          {uut3/inst/ila_core_inst/shifted_data_in_reg[7][8]_srl8/D} \
          {uut3/inst/ila_core_inst/shifted_data_in_reg[7][9]_srl8/D} \
          {uut3/inst/ila_core_inst/shifted_data_in_reg[8][0]_rep/D} \
          {uut3/inst/ila_core_inst/shifted_data_in_reg[8][0]_rep__0/D} \
          {uut3/inst/ila_core_inst/shifted_data_in_reg[8][0]_rep__1/D} \
          {uut3/inst/ila_core_inst/shifted_data_in_reg[8][0]_rep__2/D} \
          {uut3/inst/ila_core_inst/shifted_data_in_reg[8][1]_rep/D} \
          {uut3/inst/ila_core_inst/shifted_data_in_reg[8][1]_rep__0/D} \
          {uut3/inst/ila_core_inst/shifted_data_in_reg[8][1]_rep__1/D} \
          {uut3/inst/ila_core_inst/shifted_data_in_reg[8][1]_rep__2/D} \
          {uut3/inst/ila_core_inst/shifted_data_in_reg[8][2]_rep/D} \
          {uut3/inst/ila_core_inst/shifted_data_in_reg[8][2]_rep__0/D} \
          {uut3/inst/ila_core_inst/shifted_data_in_reg[8][2]_rep__1/D} \
          {uut3/inst/ila_core_inst/shifted_data_in_reg[8][2]_rep__2/D} \
          {uut3/inst/ila_core_inst/shifted_data_in_reg[8][3]_rep/D} \
          {uut3/inst/ila_core_inst/shifted_data_in_reg[8][3]_rep__0/D} \
          {uut3/inst/ila_core_inst/shifted_data_in_reg[8][3]_rep__1/D} \
          {uut3/inst/ila_core_inst/shifted_data_in_reg[8][3]_rep__2/D} \
          {uut3/inst/ila_core_inst/shifted_data_in_reg[8][4]_rep/D} \
          {uut3/inst/ila_core_inst/shifted_data_in_reg[8][4]_rep__0/D} \
          {uut3/inst/ila_core_inst/shifted_data_in_reg[8][4]_rep__1/D} \
          {uut3/inst/ila_core_inst/shifted_data_in_reg[8][4]_rep__2/D} \
          {uut3/inst/ila_core_inst/shifted_data_in_reg[8][5]_rep/D} \
          {uut3/inst/ila_core_inst/shifted_data_in_reg[8][5]_rep__0/D} \
          {uut3/inst/ila_core_inst/shifted_data_in_reg[8][5]_rep__1/D} \
          {uut3/inst/ila_core_inst/shifted_data_in_reg[8][5]_rep__2/D} \
          {uut3/inst/ila_core_inst/shifted_data_in_reg[8][6]_rep/D} \
          {uut3/inst/ila_core_inst/shifted_data_in_reg[8][6]_rep__0/D} \
          {uut3/inst/ila_core_inst/shifted_data_in_reg[8][6]_rep__1/D} \
          {uut3/inst/ila_core_inst/shifted_data_in_reg[8][6]_rep__2/D} \
          {uut3/inst/ila_core_inst/shifted_data_in_reg[8][7]_rep/D} \
          {uut3/inst/ila_core_inst/shifted_data_in_reg[8][7]_rep__0/D} \
          {uut3/inst/ila_core_inst/shifted_data_in_reg[8][7]_rep__1/D} \
          {uut3/inst/ila_core_inst/shifted_data_in_reg[8][7]_rep__2/D} \
          {uut3/inst/ila_core_inst/shifted_data_in_reg[8][8]_rep/D} \
          {uut3/inst/ila_core_inst/shifted_data_in_reg[8][8]_rep__0/D} \
          {uut3/inst/ila_core_inst/shifted_data_in_reg[8][8]_rep__1/D} \
          {uut3/inst/ila_core_inst/shifted_data_in_reg[8][8]_rep__2/D} \
          {uut3/inst/ila_core_inst/shifted_data_in_reg[8][9]/D} \
          {uut3/inst/ila_core_inst/trace_data_ack_reg[0]/D} \
          {uut3/inst/ila_core_inst/trace_data_ack_reg[1]/D} \
          {uut3/inst/ila_core_inst/u_ila_cap_ctrl/D[0]} \
          {uut3/inst/ila_core_inst/u_ila_regs/D[0]} \
          {uut3/inst/ila_core_inst/u_trig/D[0]} \
          uut3/inst/ila_core_inst/use_probe_debug_circuit_2_reg/D \
          uut3/inst/ila_core_inst/use_probe_debug_circuit_reg/D \
          {uut3/inst/ila_core_inst/xsdb_memory_read_inst/D[0]}]]
set_property IOSTANDARD LVCMOS33 [get_ports main_clk]
set_property IOSTANDARD LVCMOS33 [get_ports pll_reset]
set_property IOSTANDARD LVCMOS33 [get_ports core_reset]
set_property IOSTANDARD LVCMOS33 [get_ports {dac_out[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {dac_out[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {dac_out[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {dac_out[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {dac_out[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {dac_out[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {dac_out[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {dac_out[0]}]

set_property PACKAGE_PIN Y9 [get_ports main_clk]
set_property PACKAGE_PIN F22 [get_ports pll_reset]
set_property PACKAGE_PIN G22 [get_ports core_reset]
set_property PACKAGE_PIN U14 [get_ports {dac_out[7]}]
set_property PACKAGE_PIN U19 [get_ports {dac_out[6]}]
set_property PACKAGE_PIN W22 [get_ports {dac_out[5]}]
set_property PACKAGE_PIN V22 [get_ports {dac_out[4]}]
set_property PACKAGE_PIN U21 [get_ports {dac_out[3]}]
set_property PACKAGE_PIN U22 [get_ports {dac_out[2]}]
set_property PACKAGE_PIN T21 [get_ports {dac_out[1]}]
set_property PACKAGE_PIN T22 [get_ports {dac_out[0]}]

create_clock -period 30.303 -name primary_clk -waveform {0.000 15.000} -add [get_ports main_clk]

set_false_path -hold -from [get_pins uut1/inst/plle2_adv_inst/CLKOUT0] -to [get_pins uut3/inst/ila_core_inst/*/D]

set_false_path -from [get_clocks -of_objects [get_pins uut1/inst/plle2_adv_inst/CLKOUT0]] -to [get_clocks primary_clk]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets main_clk_IBUF_BUFG]
