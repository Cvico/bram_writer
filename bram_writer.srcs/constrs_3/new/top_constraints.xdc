



create_clock -period 10.000 -name clk -waveform {0.000 2.500} [get_ports clk]



set_input_delay  -clock clk 4 [get_ports -filter { NAME =~  "*" && DIRECTION == "IN" }]
set_output_delay -clock clk 1 [get_ports -filter { NAME =~  "*" && DIRECTION == "OUT" }]
