vlib work
vlib activehdl

vlib activehdl/xil_defaultlib
vlib activehdl/xpm

vmap xil_defaultlib activehdl/xil_defaultlib
vmap xpm activehdl/xpm

vlog -work xil_defaultlib  -sv2k12 \
"E:/Xilinx_Vivado/Vivado/2017.4/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -93 \
"E:/Xilinx_Vivado/Vivado/2017.4/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 \
"../../../../PL_DDR_TEST.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/clocking/mig_7series_v4_0_clk_ibuf.v" \
"../../../../PL_DDR_TEST.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/clocking/mig_7series_v4_0_infrastructure.v" \
"../../../../PL_DDR_TEST.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/clocking/mig_7series_v4_0_iodelay_ctrl.v" \
"../../../../PL_DDR_TEST.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/clocking/mig_7series_v4_0_tempmon.v" \
"../../../../PL_DDR_TEST.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/controller/mig_7series_v4_0_arb_mux.v" \
"../../../../PL_DDR_TEST.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/controller/mig_7series_v4_0_arb_row_col.v" \
"../../../../PL_DDR_TEST.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/controller/mig_7series_v4_0_arb_select.v" \
"../../../../PL_DDR_TEST.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/controller/mig_7series_v4_0_bank_cntrl.v" \
"../../../../PL_DDR_TEST.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/controller/mig_7series_v4_0_bank_common.v" \
"../../../../PL_DDR_TEST.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/controller/mig_7series_v4_0_bank_compare.v" \
"../../../../PL_DDR_TEST.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/controller/mig_7series_v4_0_bank_mach.v" \
"../../../../PL_DDR_TEST.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/controller/mig_7series_v4_0_bank_queue.v" \
"../../../../PL_DDR_TEST.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/controller/mig_7series_v4_0_bank_state.v" \
"../../../../PL_DDR_TEST.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/controller/mig_7series_v4_0_col_mach.v" \
"../../../../PL_DDR_TEST.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/controller/mig_7series_v4_0_mc.v" \
"../../../../PL_DDR_TEST.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/controller/mig_7series_v4_0_rank_cntrl.v" \
"../../../../PL_DDR_TEST.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/controller/mig_7series_v4_0_rank_common.v" \
"../../../../PL_DDR_TEST.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/controller/mig_7series_v4_0_rank_mach.v" \
"../../../../PL_DDR_TEST.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/controller/mig_7series_v4_0_round_robin_arb.v" \
"../../../../PL_DDR_TEST.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/ecc/mig_7series_v4_0_ecc_buf.v" \
"../../../../PL_DDR_TEST.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/ecc/mig_7series_v4_0_ecc_dec_fix.v" \
"../../../../PL_DDR_TEST.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/ecc/mig_7series_v4_0_ecc_gen.v" \
"../../../../PL_DDR_TEST.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/ecc/mig_7series_v4_0_ecc_merge_enc.v" \
"../../../../PL_DDR_TEST.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/ecc/mig_7series_v4_0_fi_xor.v" \
"../../../../PL_DDR_TEST.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/ip_top/mig_7series_v4_0_memc_ui_top_std.v" \
"../../../../PL_DDR_TEST.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/ip_top/mig_7series_v4_0_mem_intfc.v" \
"../../../../PL_DDR_TEST.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/phy/mig_7series_v4_0_ddr_byte_group_io.v" \
"../../../../PL_DDR_TEST.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/phy/mig_7series_v4_0_ddr_byte_lane.v" \
"../../../../PL_DDR_TEST.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/phy/mig_7series_v4_0_ddr_calib_top.v" \
"../../../../PL_DDR_TEST.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/phy/mig_7series_v4_0_ddr_if_post_fifo.v" \
"../../../../PL_DDR_TEST.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/phy/mig_7series_v4_0_ddr_mc_phy.v" \
"../../../../PL_DDR_TEST.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/phy/mig_7series_v4_0_ddr_mc_phy_wrapper.v" \
"../../../../PL_DDR_TEST.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/phy/mig_7series_v4_0_ddr_of_pre_fifo.v" \
"../../../../PL_DDR_TEST.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_4lanes.v" \
"../../../../PL_DDR_TEST.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_ck_addr_cmd_delay.v" \
"../../../../PL_DDR_TEST.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_dqs_found_cal.v" \
"../../../../PL_DDR_TEST.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_dqs_found_cal_hr.v" \
"../../../../PL_DDR_TEST.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_init.v" \
"../../../../PL_DDR_TEST.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_ocd_cntlr.v" \
"../../../../PL_DDR_TEST.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_ocd_data.v" \
"../../../../PL_DDR_TEST.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_ocd_edge.v" \
"../../../../PL_DDR_TEST.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_ocd_lim.v" \
"../../../../PL_DDR_TEST.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_ocd_mux.v" \
"../../../../PL_DDR_TEST.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_ocd_po_cntlr.v" \
"../../../../PL_DDR_TEST.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_ocd_samp.v" \
"../../../../PL_DDR_TEST.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_oclkdelay_cal.v" \
"../../../../PL_DDR_TEST.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_prbs_rdlvl.v" \
"../../../../PL_DDR_TEST.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_rdlvl.v" \
"../../../../PL_DDR_TEST.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_tempmon.v" \
"../../../../PL_DDR_TEST.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_top.v" \
"../../../../PL_DDR_TEST.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_wrcal.v" \
"../../../../PL_DDR_TEST.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_wrlvl.v" \
"../../../../PL_DDR_TEST.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_wrlvl_off_delay.v" \
"../../../../PL_DDR_TEST.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/phy/mig_7series_v4_0_ddr_prbs_gen.v" \
"../../../../PL_DDR_TEST.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/phy/mig_7series_v4_0_ddr_skip_calib_tap.v" \
"../../../../PL_DDR_TEST.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/phy/mig_7series_v4_0_poc_cc.v" \
"../../../../PL_DDR_TEST.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/phy/mig_7series_v4_0_poc_edge_store.v" \
"../../../../PL_DDR_TEST.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/phy/mig_7series_v4_0_poc_meta.v" \
"../../../../PL_DDR_TEST.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/phy/mig_7series_v4_0_poc_pd.v" \
"../../../../PL_DDR_TEST.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/phy/mig_7series_v4_0_poc_tap_base.v" \
"../../../../PL_DDR_TEST.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/phy/mig_7series_v4_0_poc_top.v" \
"../../../../PL_DDR_TEST.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/ui/mig_7series_v4_0_ui_cmd.v" \
"../../../../PL_DDR_TEST.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/ui/mig_7series_v4_0_ui_rd_data.v" \
"../../../../PL_DDR_TEST.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/ui/mig_7series_v4_0_ui_top.v" \
"../../../../PL_DDR_TEST.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/ui/mig_7series_v4_0_ui_wr_data.v" \
"../../../../PL_DDR_TEST.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/ddr3_mig_sim.v" \
"../../../../PL_DDR_TEST.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/ddr3.v" \

vlog -work xil_defaultlib \
"glbl.v"

