transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vmap -link {C:/Users/JackPaul/OneDrive/Documents/Programs/Projects/eeng498/axiinterface-enhancedpwm/axiinterface-enhancedpwm.tmp/enhancedpwm_v1_0_project/enhancedPwm_v1_0_project.cache/compile_simlib/riviera}
vlib riviera/xil_defaultlib

vcom -work xil_defaultlib -93  -incr \
"../../../../enhancedPwm_v1_0_project.gen/sources_1/ip/enhancedPwm_0/hdl/enhancedPwm_v1_0_S00_AXI.vhd" \
"../../../../enhancedPwm_v1_0_project.gen/sources_1/axiinterface-enhancedpwm/basicBuildingBlocksVhdl_package.vhdl" \
"../../../../enhancedPwm_v1_0_project.gen/sources_1/axiinterface-enhancedpwm/enhancedPwm.vhdl" \
"../../../../enhancedPwm_v1_0_project.gen/sources_1/axiinterface-enhancedpwm/genericComparator.vhdl" \
"../../../../enhancedPwm_v1_0_project.gen/sources_1/axiinterface-enhancedpwm/genericCounter.vhdl" \
"../../../../enhancedPwm_v1_0_project.gen/sources_1/axiinterface-enhancedpwm/genericRegister.vhdl" \
"../../../../enhancedPwm_v1_0_project.gen/sources_1/ip/enhancedPwm_0/hdl/enhancedPwm_v1_0.vhd" \
"../../../../enhancedPwm_v1_0_project.gen/sources_1/ip/enhancedPwm_0/sim/enhancedPwm_0.vhd" \

