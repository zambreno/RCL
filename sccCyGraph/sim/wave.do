onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider AE0
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/clk
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/rst
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/enable
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/busy
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/done
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/color_in
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/scc_addr_in
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/nextv_out
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/n_in
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/graph_info_in
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/rgraph_info_in
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/fw_addr_in
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/fw_count_in
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/bw_addr_in
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/bw_count_in
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/ae_id
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/nxtae_rx_data
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/nxtae_rx_vld
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/prvae_rx_data
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/prvae_rx_vld
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/nxtae_tx_data
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/nxtae_tx_vld
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/prvae_tx_data
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/prvae_tx_vld
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc0_req_ld
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc0_req_st
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc0_req_size
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc0_req_vaddr
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc0_req_wrd_rdctl
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc0_req_flush
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc0_rd_rq_stall
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc0_wr_rq_stall
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc0_rsp_push
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc0_rsp_stall
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc0_rsp_data
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc0_rsp_rdctl
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc0_rsp_flush_cmplt
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc1_req_ld
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc1_req_st
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc1_req_size
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc1_req_vaddr
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc1_req_wrd_rdctl
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc1_req_flush
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc1_rd_rq_stall
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc1_wr_rq_stall
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc1_rsp_push
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc1_rsp_stall
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc1_rsp_data
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc1_rsp_rdctl
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc1_rsp_flush_cmplt
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc2_req_ld
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc2_req_st
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc2_req_size
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc2_req_vaddr
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc2_req_wrd_rdctl
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc2_req_flush
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc2_rd_rq_stall
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc2_wr_rq_stall
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc2_rsp_push
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc2_rsp_stall
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc2_rsp_data
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc2_rsp_rdctl
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc2_rsp_flush_cmplt
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc3_req_ld
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc3_req_st
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc3_req_size
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc3_req_vaddr
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc3_req_wrd_rdctl
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc3_req_flush
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc3_rd_rq_stall
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc3_wr_rq_stall
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc3_rsp_push
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc3_rsp_stall
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc3_rsp_data
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc3_rsp_rdctl
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc3_rsp_flush_cmplt
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc4_req_ld
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc4_req_st
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc4_req_size
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc4_req_vaddr
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc4_req_wrd_rdctl
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc4_req_flush
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc4_rd_rq_stall
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc4_wr_rq_stall
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc4_rsp_push
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc4_rsp_stall
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc4_rsp_data
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc4_rsp_rdctl
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc4_rsp_flush_cmplt
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc5_req_ld
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc5_req_st
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc5_req_size
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc5_req_vaddr
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc5_req_wrd_rdctl
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc5_req_flush
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc5_rd_rq_stall
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc5_wr_rq_stall
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc5_rsp_push
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc5_rsp_stall
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc5_rsp_data
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc5_rsp_rdctl
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc5_rsp_flush_cmplt
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc6_req_ld
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc6_req_st
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc6_req_size
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc6_req_vaddr
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc6_req_wrd_rdctl
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc6_req_flush
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc6_rd_rq_stall
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc6_wr_rq_stall
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc6_rsp_push
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc6_rsp_stall
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc6_rsp_data
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc6_rsp_rdctl
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc6_rsp_flush_cmplt
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc7_req_ld
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc7_req_st
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc7_req_size
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc7_req_vaddr
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc7_req_wrd_rdctl
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc7_req_flush
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc7_rd_rq_stall
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc7_wr_rq_stall
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc7_rsp_push
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc7_rsp_stall
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc7_rsp_data
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc7_rsp_rdctl
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc7_rsp_flush_cmplt
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc8_req_ld
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc8_req_st
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc8_req_size
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc8_req_vaddr
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc8_req_wrd_rdctl
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc8_req_flush
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc8_rd_rq_stall
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc8_wr_rq_stall
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc8_rsp_push
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc8_rsp_stall
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc8_rsp_data
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc8_rsp_rdctl
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc8_rsp_flush_cmplt
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc9_req_ld
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc9_req_st
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc9_req_size
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc9_req_vaddr
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc9_req_wrd_rdctl
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc9_req_flush
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc9_rd_rq_stall
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc9_wr_rq_stall
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc9_rsp_push
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc9_rsp_stall
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc9_rsp_data
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc9_rsp_rdctl
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc9_rsp_flush_cmplt
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc10_req_ld
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc10_req_st
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc10_req_size
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc10_req_vaddr
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc10_req_wrd_rdctl
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc10_req_flush
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc10_rd_rq_stall
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc10_wr_rq_stall
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc10_rsp_push
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc10_rsp_stall
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc10_rsp_data
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc10_rsp_rdctl
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc10_rsp_flush_cmplt
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc11_req_ld
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc11_req_st
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc11_req_size
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc11_req_vaddr
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc11_req_wrd_rdctl
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc11_req_flush
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc11_rd_rq_stall
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc11_wr_rq_stall
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc11_rsp_push
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc11_rsp_stall
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc11_rsp_data
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc11_rsp_rdctl
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc11_rsp_flush_cmplt
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc12_req_ld
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc12_req_st
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc12_req_size
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc12_req_vaddr
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc12_req_wrd_rdctl
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc12_req_flush
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc12_rd_rq_stall
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc12_wr_rq_stall
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc12_rsp_push
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc12_rsp_stall
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc12_rsp_data
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc12_rsp_rdctl
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc12_rsp_flush_cmplt
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc13_req_ld
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc13_req_st
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc13_req_size
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc13_req_vaddr
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc13_req_wrd_rdctl
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc13_req_flush
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc13_rd_rq_stall
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc13_wr_rq_stall
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc13_rsp_push
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc13_rsp_stall
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc13_rsp_data
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc13_rsp_rdctl
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc13_rsp_flush_cmplt
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc14_req_ld
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc14_req_st
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc14_req_size
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc14_req_vaddr
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc14_req_wrd_rdctl
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc14_req_flush
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc14_rd_rq_stall
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc14_wr_rq_stall
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc14_rsp_push
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc14_rsp_stall
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc14_rsp_data
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc14_rsp_rdctl
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc14_rsp_flush_cmplt
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc15_req_ld
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc15_req_st
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc15_req_size
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc15_req_vaddr
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc15_req_wrd_rdctl
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc15_req_flush
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc15_rd_rq_stall
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc15_wr_rq_stall
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc15_rsp_push
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc15_rsp_stall
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc15_rsp_data
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc15_rsp_rdctl
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc15_rsp_flush_cmplt
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/n
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/color
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/scc_addr
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/graph_info
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/rgraph_info
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/fw_addr
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/fw_count
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/bw_addr
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/bw_count
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/kernels_count
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/scc_state
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/kernel_enable
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/kernel_done
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/kernel_busy
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/mc_flushed
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/kernel_tx_vld
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/kernel_tx_nextv
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/master_tx_vld
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/master_tx_nextv
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/k2k_start
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/scc_inst/k0_rx_vld
add wave -noupdate -divider AE1
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/clk
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/rst
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/enable
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/busy
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/done
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/color_in
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/scc_addr_in
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/nextv_out
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/n_in
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/graph_info_in
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/rgraph_info_in
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/fw_addr_in
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/fw_count_in
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/bw_addr_in
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/bw_count_in
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/ae_id
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/nxtae_rx_data
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/nxtae_rx_vld
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/prvae_rx_data
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/prvae_rx_vld
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/nxtae_tx_data
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/nxtae_tx_vld
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/prvae_tx_data
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/prvae_tx_vld
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc0_req_ld
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc0_req_st
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc0_req_size
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc0_req_vaddr
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc0_req_wrd_rdctl
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc0_req_flush
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc0_rd_rq_stall
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc0_wr_rq_stall
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc0_rsp_push
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc0_rsp_stall
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc0_rsp_data
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc0_rsp_rdctl
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc0_rsp_flush_cmplt
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc1_req_ld
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc1_req_st
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc1_req_size
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc1_req_vaddr
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc1_req_wrd_rdctl
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc1_req_flush
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc1_rd_rq_stall
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc1_wr_rq_stall
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc1_rsp_push
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc1_rsp_stall
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc1_rsp_data
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc1_rsp_rdctl
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc1_rsp_flush_cmplt
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc2_req_ld
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc2_req_st
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc2_req_size
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc2_req_vaddr
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc2_req_wrd_rdctl
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc2_req_flush
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc2_rd_rq_stall
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc2_wr_rq_stall
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc2_rsp_push
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc2_rsp_stall
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc2_rsp_data
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc2_rsp_rdctl
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc2_rsp_flush_cmplt
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc3_req_ld
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc3_req_st
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc3_req_size
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc3_req_vaddr
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc3_req_wrd_rdctl
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc3_req_flush
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc3_rd_rq_stall
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc3_wr_rq_stall
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc3_rsp_push
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc3_rsp_stall
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc3_rsp_data
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc3_rsp_rdctl
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc3_rsp_flush_cmplt
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc4_req_ld
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc4_req_st
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc4_req_size
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc4_req_vaddr
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc4_req_wrd_rdctl
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc4_req_flush
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc4_rd_rq_stall
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc4_wr_rq_stall
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc4_rsp_push
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc4_rsp_stall
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc4_rsp_data
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc4_rsp_rdctl
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc4_rsp_flush_cmplt
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc5_req_ld
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc5_req_st
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc5_req_size
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc5_req_vaddr
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc5_req_wrd_rdctl
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc5_req_flush
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc5_rd_rq_stall
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc5_wr_rq_stall
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc5_rsp_push
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc5_rsp_stall
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc5_rsp_data
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc5_rsp_rdctl
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc5_rsp_flush_cmplt
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc6_req_ld
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc6_req_st
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc6_req_size
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc6_req_vaddr
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc6_req_wrd_rdctl
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc6_req_flush
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc6_rd_rq_stall
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc6_wr_rq_stall
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc6_rsp_push
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc6_rsp_stall
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc6_rsp_data
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc6_rsp_rdctl
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc6_rsp_flush_cmplt
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc7_req_ld
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc7_req_st
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc7_req_size
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc7_req_vaddr
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc7_req_wrd_rdctl
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc7_req_flush
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc7_rd_rq_stall
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc7_wr_rq_stall
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc7_rsp_push
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc7_rsp_stall
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc7_rsp_data
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc7_rsp_rdctl
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc7_rsp_flush_cmplt
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc8_req_ld
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc8_req_st
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc8_req_size
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc8_req_vaddr
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc8_req_wrd_rdctl
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc8_req_flush
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc8_rd_rq_stall
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc8_wr_rq_stall
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc8_rsp_push
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc8_rsp_stall
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc8_rsp_data
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc8_rsp_rdctl
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc8_rsp_flush_cmplt
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc9_req_ld
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc9_req_st
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc9_req_size
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc9_req_vaddr
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc9_req_wrd_rdctl
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc9_req_flush
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc9_rd_rq_stall
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc9_wr_rq_stall
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc9_rsp_push
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc9_rsp_stall
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc9_rsp_data
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc9_rsp_rdctl
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc9_rsp_flush_cmplt
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc10_req_ld
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc10_req_st
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc10_req_size
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc10_req_vaddr
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc10_req_wrd_rdctl
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc10_req_flush
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc10_rd_rq_stall
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc10_wr_rq_stall
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc10_rsp_push
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc10_rsp_stall
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc10_rsp_data
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc10_rsp_rdctl
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc10_rsp_flush_cmplt
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc11_req_ld
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc11_req_st
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc11_req_size
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc11_req_vaddr
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc11_req_wrd_rdctl
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc11_req_flush
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc11_rd_rq_stall
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc11_wr_rq_stall
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc11_rsp_push
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc11_rsp_stall
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc11_rsp_data
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc11_rsp_rdctl
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc11_rsp_flush_cmplt
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc12_req_ld
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc12_req_st
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc12_req_size
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc12_req_vaddr
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc12_req_wrd_rdctl
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc12_req_flush
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc12_rd_rq_stall
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc12_wr_rq_stall
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc12_rsp_push
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc12_rsp_stall
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc12_rsp_data
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc12_rsp_rdctl
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc12_rsp_flush_cmplt
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc13_req_ld
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc13_req_st
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc13_req_size
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc13_req_vaddr
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc13_req_wrd_rdctl
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc13_req_flush
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc13_rd_rq_stall
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc13_wr_rq_stall
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc13_rsp_push
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc13_rsp_stall
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc13_rsp_data
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc13_rsp_rdctl
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc13_rsp_flush_cmplt
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc14_req_ld
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc14_req_st
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc14_req_size
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc14_req_vaddr
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc14_req_wrd_rdctl
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc14_req_flush
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc14_rd_rq_stall
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc14_wr_rq_stall
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc14_rsp_push
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc14_rsp_stall
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc14_rsp_data
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc14_rsp_rdctl
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc14_rsp_flush_cmplt
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc15_req_ld
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc15_req_st
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc15_req_size
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc15_req_vaddr
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc15_req_wrd_rdctl
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc15_req_flush
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc15_rd_rq_stall
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc15_wr_rq_stall
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc15_rsp_push
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc15_rsp_stall
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc15_rsp_data
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc15_rsp_rdctl
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc15_rsp_flush_cmplt
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/n
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/color
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/scc_addr
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/graph_info
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/rgraph_info
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/fw_addr
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/fw_count
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/bw_addr
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/bw_count
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/kernels_count
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/scc_state
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/kernel_enable
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/kernel_done
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/kernel_busy
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/mc_flushed
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/kernel_tx_vld
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/kernel_tx_nextv
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/master_tx_vld
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/master_tx_nextv
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/k2k_start
add wave -noupdate /testbench/cae_fpga1/ae_top/core/cae_pers/scc_inst/k0_rx_vld
add wave -noupdate -divider AE2
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/clk
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/rst
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/enable
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/busy
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/done
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/color_in
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/scc_addr_in
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/nextv_out
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/n_in
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/graph_info_in
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/rgraph_info_in
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/fw_addr_in
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/fw_count_in
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/bw_addr_in
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/bw_count_in
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/ae_id
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/nxtae_rx_data
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/nxtae_rx_vld
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/prvae_rx_data
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/prvae_rx_vld
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/nxtae_tx_data
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/nxtae_tx_vld
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/prvae_tx_data
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/prvae_tx_vld
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc0_req_ld
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc0_req_st
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc0_req_size
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc0_req_vaddr
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc0_req_wrd_rdctl
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc0_req_flush
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc0_rd_rq_stall
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc0_wr_rq_stall
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc0_rsp_push
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc0_rsp_stall
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc0_rsp_data
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc0_rsp_rdctl
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc0_rsp_flush_cmplt
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc1_req_ld
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc1_req_st
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc1_req_size
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc1_req_vaddr
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc1_req_wrd_rdctl
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc1_req_flush
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc1_rd_rq_stall
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc1_wr_rq_stall
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc1_rsp_push
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc1_rsp_stall
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc1_rsp_data
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc1_rsp_rdctl
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc1_rsp_flush_cmplt
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc2_req_ld
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc2_req_st
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc2_req_size
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc2_req_vaddr
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc2_req_wrd_rdctl
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc2_req_flush
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc2_rd_rq_stall
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc2_wr_rq_stall
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc2_rsp_push
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc2_rsp_stall
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc2_rsp_data
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc2_rsp_rdctl
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc2_rsp_flush_cmplt
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc3_req_ld
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc3_req_st
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc3_req_size
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc3_req_vaddr
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc3_req_wrd_rdctl
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc3_req_flush
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc3_rd_rq_stall
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc3_wr_rq_stall
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc3_rsp_push
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc3_rsp_stall
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc3_rsp_data
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc3_rsp_rdctl
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc3_rsp_flush_cmplt
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc4_req_ld
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc4_req_st
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc4_req_size
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc4_req_vaddr
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc4_req_wrd_rdctl
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc4_req_flush
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc4_rd_rq_stall
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc4_wr_rq_stall
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc4_rsp_push
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc4_rsp_stall
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc4_rsp_data
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc4_rsp_rdctl
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc4_rsp_flush_cmplt
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc5_req_ld
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc5_req_st
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc5_req_size
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc5_req_vaddr
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc5_req_wrd_rdctl
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc5_req_flush
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc5_rd_rq_stall
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc5_wr_rq_stall
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc5_rsp_push
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc5_rsp_stall
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc5_rsp_data
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc5_rsp_rdctl
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc5_rsp_flush_cmplt
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc6_req_ld
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc6_req_st
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc6_req_size
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc6_req_vaddr
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc6_req_wrd_rdctl
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc6_req_flush
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc6_rd_rq_stall
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc6_wr_rq_stall
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc6_rsp_push
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc6_rsp_stall
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc6_rsp_data
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc6_rsp_rdctl
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc6_rsp_flush_cmplt
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc7_req_ld
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc7_req_st
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc7_req_size
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc7_req_vaddr
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc7_req_wrd_rdctl
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc7_req_flush
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc7_rd_rq_stall
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc7_wr_rq_stall
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc7_rsp_push
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc7_rsp_stall
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc7_rsp_data
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc7_rsp_rdctl
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc7_rsp_flush_cmplt
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc8_req_ld
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc8_req_st
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc8_req_size
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc8_req_vaddr
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc8_req_wrd_rdctl
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc8_req_flush
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc8_rd_rq_stall
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc8_wr_rq_stall
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc8_rsp_push
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc8_rsp_stall
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc8_rsp_data
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc8_rsp_rdctl
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc8_rsp_flush_cmplt
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc9_req_ld
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc9_req_st
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc9_req_size
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc9_req_vaddr
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc9_req_wrd_rdctl
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc9_req_flush
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc9_rd_rq_stall
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc9_wr_rq_stall
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc9_rsp_push
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc9_rsp_stall
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc9_rsp_data
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc9_rsp_rdctl
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc9_rsp_flush_cmplt
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc10_req_ld
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc10_req_st
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc10_req_size
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc10_req_vaddr
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc10_req_wrd_rdctl
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc10_req_flush
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc10_rd_rq_stall
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc10_wr_rq_stall
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc10_rsp_push
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc10_rsp_stall
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc10_rsp_data
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc10_rsp_rdctl
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc10_rsp_flush_cmplt
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc11_req_ld
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc11_req_st
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc11_req_size
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc11_req_vaddr
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc11_req_wrd_rdctl
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc11_req_flush
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc11_rd_rq_stall
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc11_wr_rq_stall
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc11_rsp_push
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc11_rsp_stall
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc11_rsp_data
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc11_rsp_rdctl
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc11_rsp_flush_cmplt
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc12_req_ld
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc12_req_st
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc12_req_size
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc12_req_vaddr
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc12_req_wrd_rdctl
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc12_req_flush
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc12_rd_rq_stall
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc12_wr_rq_stall
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc12_rsp_push
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc12_rsp_stall
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc12_rsp_data
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc12_rsp_rdctl
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc12_rsp_flush_cmplt
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc13_req_ld
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc13_req_st
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc13_req_size
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc13_req_vaddr
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc13_req_wrd_rdctl
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc13_req_flush
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc13_rd_rq_stall
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc13_wr_rq_stall
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc13_rsp_push
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc13_rsp_stall
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc13_rsp_data
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc13_rsp_rdctl
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc13_rsp_flush_cmplt
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc14_req_ld
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc14_req_st
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc14_req_size
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc14_req_vaddr
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc14_req_wrd_rdctl
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc14_req_flush
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc14_rd_rq_stall
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc14_wr_rq_stall
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc14_rsp_push
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc14_rsp_stall
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc14_rsp_data
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc14_rsp_rdctl
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc14_rsp_flush_cmplt
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc15_req_ld
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc15_req_st
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc15_req_size
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc15_req_vaddr
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc15_req_wrd_rdctl
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc15_req_flush
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc15_rd_rq_stall
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc15_wr_rq_stall
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc15_rsp_push
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc15_rsp_stall
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc15_rsp_data
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc15_rsp_rdctl
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc15_rsp_flush_cmplt
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/n
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/color
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/scc_addr
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/graph_info
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/rgraph_info
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/fw_addr
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/fw_count
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/bw_addr
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/bw_count
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/kernels_count
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/scc_state
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/kernel_enable
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/kernel_done
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/kernel_busy
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/mc_flushed
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/kernel_tx_vld
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/kernel_tx_nextv
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/master_tx_vld
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/master_tx_nextv
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/k2k_start
add wave -noupdate /testbench/cae_fpga2/ae_top/core/cae_pers/scc_inst/k0_rx_vld
add wave -noupdate -divider AE3
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/rst
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/enable
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/busy
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/done
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/color_in
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/scc_addr_in
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/nextv_out
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/n_in
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/graph_info_in
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/rgraph_info_in
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/fw_addr_in
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/fw_count_in
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/bw_addr_in
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/bw_count_in
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/ae_id
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/nxtae_rx_data
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/nxtae_rx_vld
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/prvae_rx_data
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/prvae_rx_vld
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/nxtae_tx_data
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/nxtae_tx_vld
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/prvae_tx_data
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/prvae_tx_vld
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc0_req_ld
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc0_req_st
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc0_req_size
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc0_req_vaddr
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc0_req_wrd_rdctl
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc0_req_flush
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc0_rd_rq_stall
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc0_wr_rq_stall
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc0_rsp_push
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc0_rsp_stall
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc0_rsp_data
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc0_rsp_rdctl
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc0_rsp_flush_cmplt
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc1_req_ld
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc1_req_st
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc1_req_size
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc1_req_vaddr
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc1_req_wrd_rdctl
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc1_req_flush
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc1_rd_rq_stall
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc1_wr_rq_stall
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc1_rsp_push
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc1_rsp_stall
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc1_rsp_data
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc1_rsp_rdctl
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc1_rsp_flush_cmplt
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc2_req_ld
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc2_req_st
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc2_req_size
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc2_req_vaddr
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc2_req_wrd_rdctl
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc2_req_flush
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc2_rd_rq_stall
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc2_wr_rq_stall
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc2_rsp_push
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc2_rsp_stall
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc2_rsp_data
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc2_rsp_rdctl
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc2_rsp_flush_cmplt
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc3_req_ld
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc3_req_st
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc3_req_size
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc3_req_vaddr
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc3_req_wrd_rdctl
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc3_req_flush
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc3_rd_rq_stall
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc3_wr_rq_stall
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc3_rsp_push
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc3_rsp_stall
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc3_rsp_data
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc3_rsp_rdctl
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc3_rsp_flush_cmplt
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc4_req_ld
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc4_req_st
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc4_req_size
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc4_req_vaddr
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc4_req_wrd_rdctl
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc4_req_flush
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc4_rd_rq_stall
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc4_wr_rq_stall
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc4_rsp_push
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc4_rsp_stall
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc4_rsp_data
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc4_rsp_rdctl
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc4_rsp_flush_cmplt
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc5_req_ld
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc5_req_st
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc5_req_size
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc5_req_vaddr
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc5_req_wrd_rdctl
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc5_req_flush
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc5_rd_rq_stall
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc5_wr_rq_stall
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc5_rsp_push
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc5_rsp_stall
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc5_rsp_data
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc5_rsp_rdctl
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc5_rsp_flush_cmplt
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc6_req_ld
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc6_req_st
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc6_req_size
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc6_req_vaddr
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc6_req_wrd_rdctl
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc6_req_flush
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc6_rd_rq_stall
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc6_wr_rq_stall
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc6_rsp_push
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc6_rsp_stall
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc6_rsp_data
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc6_rsp_rdctl
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc6_rsp_flush_cmplt
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc7_req_ld
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc7_req_st
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc7_req_size
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc7_req_vaddr
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc7_req_wrd_rdctl
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc7_req_flush
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc7_rd_rq_stall
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc7_wr_rq_stall
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc7_rsp_push
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc7_rsp_stall
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc7_rsp_data
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc7_rsp_rdctl
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc7_rsp_flush_cmplt
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc8_req_ld
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc8_req_st
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc8_req_size
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc8_req_vaddr
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc8_req_wrd_rdctl
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc8_req_flush
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc8_rd_rq_stall
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc8_wr_rq_stall
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc8_rsp_push
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc8_rsp_stall
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc8_rsp_data
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc8_rsp_rdctl
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc8_rsp_flush_cmplt
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc9_req_ld
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc9_req_st
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc9_req_size
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc9_req_vaddr
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc9_req_wrd_rdctl
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc9_req_flush
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc9_rd_rq_stall
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc9_wr_rq_stall
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc9_rsp_push
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc9_rsp_stall
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc9_rsp_data
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc9_rsp_rdctl
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc9_rsp_flush_cmplt
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc10_req_ld
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc10_req_st
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc10_req_size
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc10_req_vaddr
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc10_req_wrd_rdctl
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc10_req_flush
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc10_rd_rq_stall
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc10_wr_rq_stall
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc10_rsp_push
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc10_rsp_stall
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc10_rsp_data
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc10_rsp_rdctl
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc10_rsp_flush_cmplt
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc11_req_ld
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc11_req_st
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc11_req_size
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc11_req_vaddr
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc11_req_wrd_rdctl
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc11_req_flush
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc11_rd_rq_stall
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc11_wr_rq_stall
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc11_rsp_push
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc11_rsp_stall
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc11_rsp_data
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc11_rsp_rdctl
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc11_rsp_flush_cmplt
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc12_req_ld
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc12_req_st
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc12_req_size
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc12_req_vaddr
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc12_req_wrd_rdctl
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc12_req_flush
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc12_rd_rq_stall
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc12_wr_rq_stall
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc12_rsp_push
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc12_rsp_stall
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc12_rsp_data
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc12_rsp_rdctl
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc12_rsp_flush_cmplt
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc13_req_ld
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc13_req_st
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc13_req_size
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc13_req_vaddr
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc13_req_wrd_rdctl
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc13_req_flush
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc13_rd_rq_stall
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc13_wr_rq_stall
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc13_rsp_push
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc13_rsp_stall
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc13_rsp_data
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc13_rsp_rdctl
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc13_rsp_flush_cmplt
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc14_req_ld
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc14_req_st
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc14_req_size
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc14_req_vaddr
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc14_req_wrd_rdctl
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc14_req_flush
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc14_rd_rq_stall
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc14_wr_rq_stall
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc14_rsp_push
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc14_rsp_stall
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc14_rsp_data
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc14_rsp_rdctl
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc14_rsp_flush_cmplt
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc15_req_ld
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc15_req_st
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc15_req_size
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc15_req_vaddr
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc15_req_wrd_rdctl
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc15_req_flush
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc15_rd_rq_stall
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc15_wr_rq_stall
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc15_rsp_push
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc15_rsp_stall
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc15_rsp_data
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc15_rsp_rdctl
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc15_rsp_flush_cmplt
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/n
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/color
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/scc_addr
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/graph_info
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/rgraph_info
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/fw_addr
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/fw_count
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/bw_addr
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/bw_count
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/kernels_count
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/scc_state
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/kernel_enable
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/kernel_done
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/kernel_busy
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/mc_flushed
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/kernel_tx_vld
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/kernel_tx_nextv
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/master_tx_vld
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/master_tx_nextv
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/k2k_start
add wave -noupdate /testbench/cae_fpga3/ae_top/core/cae_pers/scc_inst/k0_rx_vld
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0} {{Cursor 2} {81 ps} 0}
quietly wave cursor active 2
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {2360 ps}
