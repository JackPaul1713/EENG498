create_clock -period 20.000 [get_ports {clk_in1}]
create_generated_clock -source [get_ports -no_traverse clk_in1] -edges {1 2 3} -edge_shift {0.000 -3.263 -6.526} [get_ports -no_traverse {clk_out1}]
create_generated_clock -source [get_ports -no_traverse clk_in1] -edges {1 2 3} -edge_shift {0.000 -8.653 -17.305} [get_ports -no_traverse {clk_out2}]
set_property -quiet IO_BUFFER_TYPE NONE [get_ports -quiet clk_in1]
set_property -quiet CLOCK_BUFFER_TYPE NONE [get_ports -quiet clk_in1]
set_property -quiet IS_IP_OOC_CELL TRUE [get_cells -of [get_ports -no_traverse -quiet clk_in1]]
