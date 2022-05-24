# Add CLINT and connect AXI
set_property -dict [list CONFIG.NUM_MI {2}] [get_bd_cells axi_interconnect_0]
create_bd_cell -type ip -vlnv esa.informatik.tu-darmstadt.de:user:CLINT:1.0 CLINT_0
connect_bd_intf_net [get_bd_intf_pins CLINT_0/axi_l] -boundary_type upper [get_bd_intf_pins axi_interconnect_0/M01_AXI]

