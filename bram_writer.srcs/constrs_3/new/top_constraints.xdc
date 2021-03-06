



create_clock -period 10.000 -name clk -waveform {0.000 2.500} [get_ports clk]



set_input_delay -clock clk 4.000 [get_ports -filter { NAME =~  "*" && DIRECTION == "IN" }]
set_output_delay -clock clk 1.000 [get_ports -filter { NAME =~  "*" && DIRECTION == "OUT" }]

create_pblock pblock_RAM_reg_bram_0
add_cells_to_pblock [get_pblocks pblock_RAM_reg_bram_0] [get_cells -quiet [list RAM_reg_bram_0]]
resize_pblock [get_pblocks pblock_RAM_reg_bram_0] -add {SLICE_X50Y133:SLICE_X51Y133}
set_property IOSTANDARD LVCMOS33 [get_ports {addr[9]}]
set_property IOSTANDARD LVCMOS33 [get_ports {addr[8]}]
set_property IOSTANDARD LVCMOS33 [get_ports {addr[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {addr[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {addr[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {addr[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {addr[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {addr[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {addr[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {addr[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {data_input[17]}]
set_property IOSTANDARD LVCMOS33 [get_ports {data_input[16]}]
set_property IOSTANDARD LVCMOS33 [get_ports {data_input[15]}]
set_property IOSTANDARD LVCMOS33 [get_ports {data_input[14]}]
set_property IOSTANDARD LVCMOS33 [get_ports {data_input[13]}]
set_property IOSTANDARD LVCMOS33 [get_ports {data_input[12]}]
set_property IOSTANDARD LVCMOS33 [get_ports {data_input[11]}]
set_property IOSTANDARD LVCMOS33 [get_ports {data_input[10]}]
set_property IOSTANDARD LVCMOS33 [get_ports {data_input[9]}]
set_property IOSTANDARD LVCMOS33 [get_ports {data_input[8]}]
set_property IOSTANDARD LVCMOS33 [get_ports {data_input[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {data_input[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {data_input[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {data_input[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {data_input[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {data_input[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {data_input[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {data_input[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {data_output[17]}]
set_property IOSTANDARD LVCMOS33 [get_ports {data_output[16]}]
set_property IOSTANDARD LVCMOS33 [get_ports {data_output[15]}]
set_property IOSTANDARD LVCMOS33 [get_ports {data_output[14]}]
set_property IOSTANDARD LVCMOS33 [get_ports {data_output[13]}]
set_property IOSTANDARD LVCMOS33 [get_ports {data_output[12]}]
set_property IOSTANDARD LVCMOS33 [get_ports {data_output[11]}]
set_property IOSTANDARD LVCMOS33 [get_ports {data_output[10]}]
set_property IOSTANDARD LVCMOS33 [get_ports {data_output[9]}]
set_property IOSTANDARD LVCMOS33 [get_ports {data_output[8]}]
set_property IOSTANDARD LVCMOS33 [get_ports {data_output[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {data_output[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {data_output[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {data_output[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {data_output[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {data_output[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {data_output[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {data_output[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports enable]
set_property IOSTANDARD LVCMOS33 [get_ports write_enable]
set_property DRIVE 12 [get_ports {data_output[17]}]
set_property DRIVE 12 [get_ports {data_output[16]}]
set_property DRIVE 12 [get_ports {data_output[15]}]
set_property DRIVE 12 [get_ports {data_output[14]}]
set_property DRIVE 12 [get_ports {data_output[13]}]
set_property DRIVE 12 [get_ports {data_output[12]}]
set_property DRIVE 12 [get_ports {data_output[11]}]
set_property DRIVE 12 [get_ports {data_output[10]}]
set_property DRIVE 12 [get_ports {data_output[9]}]
set_property DRIVE 12 [get_ports {data_output[8]}]
set_property DRIVE 12 [get_ports {data_output[7]}]
set_property DRIVE 12 [get_ports {data_output[6]}]
set_property DRIVE 12 [get_ports {data_output[5]}]
set_property DRIVE 12 [get_ports {data_output[4]}]
set_property DRIVE 12 [get_ports {data_output[3]}]
set_property DRIVE 12 [get_ports {data_output[2]}]
set_property DRIVE 12 [get_ports {data_output[1]}]
set_property DRIVE 12 [get_ports {data_output[0]}]
set_property SLEW SLOW [get_ports {data_output[17]}]
set_property SLEW SLOW [get_ports {data_output[16]}]
set_property SLEW SLOW [get_ports {data_output[15]}]
set_property SLEW SLOW [get_ports {data_output[14]}]
set_property SLEW SLOW [get_ports {data_output[13]}]
set_property SLEW SLOW [get_ports {data_output[12]}]
set_property SLEW SLOW [get_ports {data_output[11]}]
set_property SLEW SLOW [get_ports {data_output[10]}]
set_property SLEW SLOW [get_ports {data_output[9]}]
set_property SLEW SLOW [get_ports {data_output[8]}]
set_property SLEW SLOW [get_ports {data_output[7]}]
set_property SLEW SLOW [get_ports {data_output[6]}]
set_property SLEW SLOW [get_ports {data_output[5]}]
set_property SLEW SLOW [get_ports {data_output[4]}]
set_property SLEW SLOW [get_ports {data_output[3]}]
set_property SLEW SLOW [get_ports {data_output[2]}]
set_property SLEW SLOW [get_ports {data_output[1]}]
set_property SLEW SLOW [get_ports {data_output[0]}]
