# Placement constraints
create_pblock pblock_slr0
resize_pblock [get_pblocks pblock_slr0] -add {SLR0}
#add_cells_to_pblock [get_pblocks pblock_slr0] [get_cells -quiet ""]

create_pblock pblock_slr1
resize_pblock [get_pblocks pblock_slr1] -add {SLR1}
add_cells_to_pblock [get_pblocks pblock_slr1] [get_cells -quiet "core_inst/core_inst/core_pcie_inst/core_inst/dma_if_mux_inst"]
add_cells_to_pblock [get_pblocks pblock_slr1] [get_cells -quiet "core_inst/core_inst/core_pcie_inst/core_inst/iface[*].interface_inst/interface_rx_inst"]
add_cells_to_pblock [get_pblocks pblock_slr1] [get_cells -quiet "core_inst/core_inst/core_pcie_inst/core_inst/iface[*].interface_inst/interface_tx_inst"]
add_cells_to_pblock [get_pblocks pblock_slr1] [get_cells -quiet "core_inst/core_inst/core_pcie_inst/core_inst/iface[*].interface_inst/tx_fifo_inst"]
add_cells_to_pblock [get_pblocks pblock_slr1] [get_cells -quiet "core_inst/core_inst/core_pcie_inst/core_inst/iface[*].interface_inst/rx_fifo_inst"]

create_pblock pblock_slr2
resize_pblock [get_pblocks pblock_slr2] -add {SLR2}
#add_cells_to_pblock [get_pblocks pblock_slr2] [get_cells -quiet ""]

create_pblock pblock_pcie
resize_pblock [get_pblocks pblock_pcie] -add {CLOCKREGION_X4Y5:CLOCKREGION_X5Y8}
add_cells_to_pblock [get_pblocks pblock_pcie] [get_cells -quiet "pcie4_uscale_plus_inst"]
add_cells_to_pblock [get_pblocks pblock_pcie] [get_cells -quiet "core_inst/core_inst/pcie_if_inst"]
add_cells_to_pblock [get_pblocks pblock_pcie] [get_cells -quiet "core_inst/core_inst/core_pcie_inst/pcie_axil_master_inst"]
add_cells_to_pblock [get_pblocks pblock_pcie] [get_cells -quiet "core_inst/core_inst/core_pcie_inst/dma_if_pcie_inst"]
add_cells_to_pblock [get_pblocks pblock_pcie] [get_cells -quiet "core_inst/core_inst/core_pcie_inst/pcie_msix_inst"]

create_pblock pblock_eth
add_cells_to_pblock [get_pblocks pblock_eth] [get_cells -quiet [list qsfp0_phy_quad_inst qsfp1_phy_quad_inst]]
resize_pblock [get_pblocks pblock_eth] -add {CLOCKREGION_X5Y10:CLOCKREGION_X5Y14}
add_cells_to_pblock [get_pblocks pblock_eth] [get_cells -quiet "core_inst/mac[*].eth_mac_inst"]
add_cells_to_pblock [get_pblocks pblock_eth] [get_cells -quiet "core_inst/core_inst/core_pcie_inst/core_inst/iface[*].interface_inst/port[*].port_inst/port_tx_inst/tx_async_fifo_inst"]
add_cells_to_pblock [get_pblocks pblock_eth] [get_cells -quiet "core_inst/core_inst/core_pcie_inst/core_inst/iface[*].interface_inst/port[*].port_inst/port_rx_inst/rx_async_fifo_inst"]
add_cells_to_pblock [get_pblocks pblock_eth] [get_cells -quiet "core_inst/core_inst/core_pcie_inst/core_inst/iface[*].interface_inst/port[*].port_inst/port_tx_inst/tx_cpl_fifo_inst"]





