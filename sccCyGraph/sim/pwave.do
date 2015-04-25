onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/clk
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/rst
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/enable
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/busy
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/done
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/n_in
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/non_zeros_in
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/graphData_in
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/graphInfo_in
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/queue1_address_in
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/queue2_address_in
add wave -noupdate -radix decimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/n
add wave -noupdate -radix decimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/non_zeros
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/graphData
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/graphInfo
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/queue1_address
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/queue2_address
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/kernels_count
add wave -noupdate -radix decimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/current_level
add wave -noupdate -radix decimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/cq_count
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/q_switch
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/cygraph_state
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/kernel_enable
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/kernel_done
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/kernel_busy
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/mc_flushed
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/cq_address
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/nq_address
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/kernel_tx_done
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/kernel_tx_vld
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/kernel_tx_count
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/master_tx_done
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/master_tx_vld
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/master_tx_count
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k2k_start
add wave -noupdate -divider MC0
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/mc0_req_ld
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/mc0_req_st
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/mc0_req_size
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/mc0_req_vaddr
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/mc0_req_wrd_rdctl
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/mc0_req_flush
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/mc0_rd_rq_stall
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/mc0_wr_rq_stall
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/mc0_rsp_push
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/mc0_rsp_stall
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/mc0_rsp_data
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/mc0_rsp_rdctl
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/mc0_rsp_flush_cmplt
add wave -noupdate -divider MC1
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/mc1_req_ld
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/mc1_req_st
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/mc1_req_size
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/mc1_req_vaddr
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/mc1_req_wrd_rdctl
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/mc1_req_flush
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/mc1_rd_rq_stall
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/mc1_wr_rq_stall
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/mc1_rsp_push
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/mc1_rsp_stall
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/mc1_rsp_data
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/mc1_rsp_rdctl
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/mc1_rsp_flush_cmplt
TreeUpdate [SetDefaultTree]
quietly WaveActivateNextPane
add wave -noupdate -divider {Kernel 0}
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k0/clk
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k0/rst
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k0/enable
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k0/busy
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k0/done
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k0/kernel_id
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k0/kernels_count
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k0/current_level
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k0/cq_count
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k0/kernel_tx_done
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k0/kernel_tx_vld
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k0/kernel_tx_count
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k0/kernel_rx_done
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k0/kernel_rx_vld
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k0/kernel_rx_count
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k0/graphData
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k0/graphInfo
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k0/cq_address
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k0/nq_address
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k0/mc_req_ld
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k0/mc_req_st
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k0/mc_req_size
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k0/mc_req_vaddr
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k0/mc_req_wrd_rdctl
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k0/mc_rd_rq_stall
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k0/mc_wr_rq_stall
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k0/mc_rsp_push
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k0/mc_rsp_stall
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k0/mc_rsp_data
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k0/mc_rsp_rdctl
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k0/started
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k0/wr_offset
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k0/wr_demand_count
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k0/wr_reserved_space
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k0/wr_used_space
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k0/out_done
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k0/out_kernel_tx_vld
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k0/p1_done
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k0/p1_count
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k0/p1_offset
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k0/p1_req_q_almost_full
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k0/p1_req_q_wr_en
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k0/p1_req_q_rd_enb
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k0/p1_req_q_rd_en
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k0/p1_req_q_din
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k0/p1_req_q_dout
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k0/p1_req_q_valid
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k0/p1_req_q_full
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k0/p1_req_q_empty
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k0/p1_rsp_q_almost_full
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k0/p1_rsp_q_wr_en
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k0/p1_rsp_q_rd_enb
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k0/p1_rsp_q_rd_en
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k0/p1_rsp_q_din
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k0/p1_rsp_q_dout
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k0/p1_rsp_q_valid
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k0/p1_rsp_q_full
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k0/p1_rsp_q_empty
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k0/p2_done
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k0/p2_busy
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k0/p2_count_1
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k0/p2_count_2
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k0/p2_req_q_almost_full
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k0/p2_req_q_wr_en
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k0/p2_req_q_rd_enb
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k0/p2_req_q_rd_en
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k0/p2_req_q_din
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k0/p2_req_q_dout
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k0/p2_req_q_valid
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k0/p2_req_q_full
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k0/p2_req_q_empty
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k0/p2_rsp_q_almost_full
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k0/p2_rsp_q_wr_en
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k0/p2_rsp_q_rd_enb
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k0/p2_rsp_q_rd_en
add wave -noupdate -radix decimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k0/p2_rsp_q_din
add wave -noupdate -radix decimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k0/p2_rsp_q_dout
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k0/p2_rsp_q_valid
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k0/p2_rsp_q_full
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k0/p2_rsp_q_empty
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k0/p3_done
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k0/p3_count
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k0/p3_req_q_almost_full
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k0/p3_req_q_wr_en
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k0/p3_req_q_rd_enb
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k0/p3_req_q_rd_en
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k0/p3_req_q_din
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k0/p3_req_q_dout
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k0/p3_req_q_valid
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k0/p3_req_q_full
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k0/p3_req_q_empty
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k0/p3_rsp_q_almost_full
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k0/p3_rsp_q_wr_en
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k0/p3_rsp_q_rd_enb
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k0/p3_rsp_q_rd_en
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k0/p3_rsp_q_din
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k0/p3_rsp_q_dout
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k0/p3_rsp_q_valid
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k0/p3_rsp_q_full
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k0/p3_rsp_q_empty
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k0/p4_done
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k0/p4_count
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k0/p4_state
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k0/p4_addr_q_almost_full
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k0/p4_addr_q_wr_en
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k0/p4_addr_q_rd_enb
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k0/p4_addr_q_rd_en
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k0/p4_addr_q_din
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k0/p4_addr_q_dout
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k0/p4_addr_q_valid
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k0/p4_addr_q_full
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k0/p4_addr_q_empty
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k0/p4_info_q_almost_full
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k0/p4_info_q_wr_en
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k0/p4_info_q_rd_enb
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k0/p4_info_q_rd_en
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k0/p4_info_q_din
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k0/p4_info_q_dout
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k0/p4_info_q_valid
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k0/p4_info_q_full
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k0/p4_info_q_empty
add wave -noupdate -divider {Kernel 1}
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k1/clk
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k1/rst
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k1/enable
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k1/busy
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k1/done
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k1/kernel_id
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k1/kernels_count
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k1/current_level
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k1/cq_count
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k1/kernel_tx_done
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k1/kernel_tx_vld
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k1/kernel_tx_count
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k1/kernel_rx_done
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k1/kernel_rx_vld
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k1/kernel_rx_count
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k1/graphData
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k1/graphInfo
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k1/cq_address
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k1/nq_address
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k1/mc_req_ld
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k1/mc_req_st
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k1/mc_req_size
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k1/mc_req_vaddr
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k1/mc_req_wrd_rdctl
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k1/mc_rd_rq_stall
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k1/mc_wr_rq_stall
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k1/mc_rsp_push
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k1/mc_rsp_stall
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k1/mc_rsp_data
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k1/mc_rsp_rdctl
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k1/started
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k1/wr_offset
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k1/wr_demand_count
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k1/wr_reserved_space
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k1/wr_used_space
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k1/out_done
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k1/out_kernel_tx_vld
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k1/p1_done
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k1/p1_count
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k1/p1_offset
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k1/p1_req_q_almost_full
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k1/p1_req_q_wr_en
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k1/p1_req_q_rd_enb
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k1/p1_req_q_rd_en
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k1/p1_req_q_din
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k1/p1_req_q_dout
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k1/p1_req_q_valid
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k1/p1_req_q_full
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k1/p1_req_q_empty
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k1/p1_rsp_q_almost_full
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k1/p1_rsp_q_wr_en
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k1/p1_rsp_q_rd_enb
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k1/p1_rsp_q_rd_en
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k1/p1_rsp_q_din
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k1/p1_rsp_q_dout
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k1/p1_rsp_q_valid
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k1/p1_rsp_q_full
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k1/p1_rsp_q_empty
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k1/p2_done
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k1/p2_busy
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k1/p2_count_1
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k1/p2_count_2
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k1/p2_req_q_almost_full
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k1/p2_req_q_wr_en
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k1/p2_req_q_rd_enb
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k1/p2_req_q_rd_en
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k1/p2_req_q_din
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k1/p2_req_q_dout
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k1/p2_req_q_valid
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k1/p2_req_q_full
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k1/p2_req_q_empty
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k1/p2_rsp_q_almost_full
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k1/p2_rsp_q_wr_en
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k1/p2_rsp_q_rd_enb
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k1/p2_rsp_q_rd_en
add wave -noupdate -radix decimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k1/p2_rsp_q_din
add wave -noupdate -radix decimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k1/p2_rsp_q_dout
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k1/p2_rsp_q_valid
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k1/p2_rsp_q_full
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k1/p2_rsp_q_empty
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k1/p3_done
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k1/p3_count
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k1/p3_req_q_almost_full
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k1/p3_req_q_wr_en
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k1/p3_req_q_rd_enb
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k1/p3_req_q_rd_en
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k1/p3_req_q_din
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k1/p3_req_q_dout
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k1/p3_req_q_valid
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k1/p3_req_q_full
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k1/p3_req_q_empty
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k1/p3_rsp_q_almost_full
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k1/p3_rsp_q_wr_en
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k1/p3_rsp_q_rd_enb
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k1/p3_rsp_q_rd_en
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k1/p3_rsp_q_din
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k1/p3_rsp_q_dout
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k1/p3_rsp_q_valid
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k1/p3_rsp_q_full
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k1/p3_rsp_q_empty
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k1/p4_done
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k1/p4_count
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k1/p4_state
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k1/p4_addr_q_almost_full
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k1/p4_addr_q_wr_en
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k1/p4_addr_q_rd_enb
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k1/p4_addr_q_rd_en
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k1/p4_addr_q_din
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k1/p4_addr_q_dout
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k1/p4_addr_q_valid
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k1/p4_addr_q_full
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k1/p4_addr_q_empty
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k1/p4_info_q_almost_full
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k1/p4_info_q_wr_en
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k1/p4_info_q_rd_enb
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k1/p4_info_q_rd_en
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k1/p4_info_q_din
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k1/p4_info_q_dout
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k1/p4_info_q_valid
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k1/p4_info_q_full
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cygraph_inst/k1/p4_info_q_empty
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {4270282 ps} 0}
quietly wave cursor active 1
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
WaveRestoreZoom {0 ps} {8304730 ps}
