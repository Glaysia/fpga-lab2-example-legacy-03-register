set_property -dict {PACKAGE_PIN K4 IOSTANDARD LVCMOS33} [get_ports sw_l]
set_property -dict {PACKAGE_PIN N8 IOSTANDARD LVCMOS33} [get_ports sw_s]
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets sw_l_IBUF]
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets sw_s_IBUF]

set_property -dict {PACKAGE_PIN Y1 IOSTANDARD LVCMOS33} [get_ports i[3]]
set_property -dict {PACKAGE_PIN W3 IOSTANDARD LVCMOS33} [get_ports i[2]]
set_property -dict {PACKAGE_PIN U2 IOSTANDARD LVCMOS33} [get_ports i[1]]
set_property -dict {PACKAGE_PIN T1 IOSTANDARD LVCMOS33} [get_ports i[0]]

set_property -dict {PACKAGE_PIN L4 IOSTANDARD LVCMOS33} [get_ports o[3]]
set_property -dict {PACKAGE_PIN M4 IOSTANDARD LVCMOS33} [get_ports o[2]]
set_property -dict {PACKAGE_PIN M2 IOSTANDARD LVCMOS33} [get_ports o[1]]
set_property -dict {PACKAGE_PIN N7 IOSTANDARD LVCMOS33} [get_ports o[0]]