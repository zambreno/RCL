library ieee ;
	use ieee.std_logic_1164.all ;
	use ieee.numeric_std.all ;
	-- use ieee.std_logic_unsigned.all;

library unisim;
	use unisim.vcomponents.all;

entity cygraph is
	port (
		-- control signals
		clk					: in std_logic;
		rst					: in std_logic;
		enable				: in std_logic;
		busy				: out std_logic;	-- 0 processing, 1 otherwise
		done				: out std_logic; 	-- 1 done processing, 0 other
		-- ae-to-ae signals
		ae_id				: in std_logic_vector(1 downto 0); -- Application Engine ID
		nxtae_rx_data		: in std_logic_vector(31 downto 0);
		nxtae_rx_vld 		: in std_logic;
		prvae_rx_data		: in std_logic_vector(31 downto 0);
		prvae_rx_vld 		: in std_logic;
		nxtae_tx_data		: out std_logic_vector(31 downto 0);
		nxtae_tx_vld 		: out std_logic;
		prvae_tx_data		: out std_logic_vector(31 downto 0);
		prvae_tx_vld 		: out std_logic;
		-- Graph Parameters
		n_in				: in std_logic_vector(63 downto 0);	-- Number of nodes in graph
		non_zeros_in		: in std_logic_vector(63 downto 0); -- Number of non-zero edges
		current_level_in	: in std_logic_vector(63 downto 0); -- Current level of traversal
		cq_count_in			: in std_logic_vector(63 downto 0); -- How many nodes to traverse in the current level
		nq_count_out		: out std_logic_vector(63 downto 0); -- How many nodes to traverse in the next level
		-- Input Graph Pointers (Represented in Custom CSR)
		graphData_in		: in std_logic_vector(63 downto 0);
		graphInfo_in		: in std_logic_vector(63 downto 0);
		-- Queue pointers
		queue1_address_in	: in std_logic_vector(63 downto 0);
		queue2_address_in	: in std_logic_vector(63 downto 0);
		-- MC0 port signals
		mc0_req_ld			: out std_logic;
		mc0_req_st			: out std_logic;
		mc0_req_size		: out std_logic_vector(1 downto 0);
		mc0_req_vaddr		: out std_logic_vector(47 downto 0);
		mc0_req_wrd_rdctl	: out std_logic_vector(63 downto 0);
		mc0_req_flush		: out std_logic;
		mc0_rd_rq_stall		: in std_logic;
		mc0_wr_rq_stall		: in std_logic;
		mc0_rsp_push		: in std_logic;
		mc0_rsp_stall		: out std_logic;
		mc0_rsp_data		: in std_logic_vector(63 downto 0);
		mc0_rsp_rdctl		: in std_logic_vector(31 downto 0);
		mc0_rsp_flush_cmplt	: in std_logic;
		-- MC1 port signals
		mc1_req_ld			: out std_logic;
		mc1_req_st			: out std_logic;
		mc1_req_size		: out std_logic_vector(1 downto 0);
		mc1_req_vaddr		: out std_logic_vector(47 downto 0);
		mc1_req_wrd_rdctl	: out std_logic_vector(63 downto 0);
		mc1_req_flush		: out std_logic;
		mc1_rd_rq_stall		: in std_logic;
		mc1_wr_rq_stall		: in std_logic;
		mc1_rsp_push		: in std_logic;
		mc1_rsp_stall		: out std_logic;
		mc1_rsp_data		: in std_logic_vector(63 downto 0);
		mc1_rsp_rdctl		: in std_logic_vector(31 downto 0);
		mc1_rsp_flush_cmplt	: in std_logic;
		-- MC2 port signals
		mc2_req_ld			: out std_logic;
		mc2_req_st			: out std_logic;
		mc2_req_size		: out std_logic_vector(1 downto 0);
		mc2_req_vaddr		: out std_logic_vector(47 downto 0);
		mc2_req_wrd_rdctl	: out std_logic_vector(63 downto 0);
		mc2_req_flush		: out std_logic;
		mc2_rd_rq_stall		: in std_logic;
		mc2_wr_rq_stall		: in std_logic;
		mc2_rsp_push		: in std_logic;
		mc2_rsp_stall		: out std_logic;
		mc2_rsp_data		: in std_logic_vector(63 downto 0);
		mc2_rsp_rdctl		: in std_logic_vector(31 downto 0);
		mc2_rsp_flush_cmplt	: in std_logic;
		-- MC3 port signals
		mc3_req_ld			: out std_logic;
		mc3_req_st			: out std_logic;
		mc3_req_size		: out std_logic_vector(1 downto 0);
		mc3_req_vaddr		: out std_logic_vector(47 downto 0);
		mc3_req_wrd_rdctl	: out std_logic_vector(63 downto 0);
		mc3_req_flush		: out std_logic;
		mc3_rd_rq_stall		: in std_logic;
		mc3_wr_rq_stall		: in std_logic;
		mc3_rsp_push		: in std_logic;
		mc3_rsp_stall		: out std_logic;
		mc3_rsp_data		: in std_logic_vector(63 downto 0);
		mc3_rsp_rdctl		: in std_logic_vector(31 downto 0);
		mc3_rsp_flush_cmplt	: in std_logic;
		-- MC4 port signals
		mc4_req_ld			: out std_logic;
		mc4_req_st			: out std_logic;
		mc4_req_size		: out std_logic_vector(1 downto 0);
		mc4_req_vaddr		: out std_logic_vector(47 downto 0);
		mc4_req_wrd_rdctl	: out std_logic_vector(63 downto 0);
		mc4_req_flush		: out std_logic;
		mc4_rd_rq_stall		: in std_logic;
		mc4_wr_rq_stall		: in std_logic;
		mc4_rsp_push		: in std_logic;
		mc4_rsp_stall		: out std_logic;
		mc4_rsp_data		: in std_logic_vector(63 downto 0);
		mc4_rsp_rdctl		: in std_logic_vector(31 downto 0);
		mc4_rsp_flush_cmplt	: in std_logic;
		-- MC5 port signals
		mc5_req_ld			: out std_logic;
		mc5_req_st			: out std_logic;
		mc5_req_size		: out std_logic_vector(1 downto 0);
		mc5_req_vaddr		: out std_logic_vector(47 downto 0);
		mc5_req_wrd_rdctl	: out std_logic_vector(63 downto 0);
		mc5_req_flush		: out std_logic;
		mc5_rd_rq_stall		: in std_logic;
		mc5_wr_rq_stall		: in std_logic;
		mc5_rsp_push		: in std_logic;
		mc5_rsp_stall		: out std_logic;
		mc5_rsp_data		: in std_logic_vector(63 downto 0);
		mc5_rsp_rdctl		: in std_logic_vector(31 downto 0);
		mc5_rsp_flush_cmplt	: in std_logic;
		-- MC6 port signals
		mc6_req_ld			: out std_logic;
		mc6_req_st			: out std_logic;
		mc6_req_size		: out std_logic_vector(1 downto 0);
		mc6_req_vaddr		: out std_logic_vector(47 downto 0);
		mc6_req_wrd_rdctl	: out std_logic_vector(63 downto 0);
		mc6_req_flush		: out std_logic;
		mc6_rd_rq_stall		: in std_logic;
		mc6_wr_rq_stall		: in std_logic;
		mc6_rsp_push		: in std_logic;
		mc6_rsp_stall		: out std_logic;
		mc6_rsp_data		: in std_logic_vector(63 downto 0);
		mc6_rsp_rdctl		: in std_logic_vector(31 downto 0);
		mc6_rsp_flush_cmplt	: in std_logic;
		-- MC7 port signals
		mc7_req_ld			: out std_logic;
		mc7_req_st			: out std_logic;
		mc7_req_size		: out std_logic_vector(1 downto 0);
		mc7_req_vaddr		: out std_logic_vector(47 downto 0);
		mc7_req_wrd_rdctl	: out std_logic_vector(63 downto 0);
		mc7_req_flush		: out std_logic;
		mc7_rd_rq_stall		: in std_logic;
		mc7_wr_rq_stall		: in std_logic;
		mc7_rsp_push		: in std_logic;
		mc7_rsp_stall		: out std_logic;
		mc7_rsp_data		: in std_logic_vector(63 downto 0);
		mc7_rsp_rdctl		: in std_logic_vector(31 downto 0);
		mc7_rsp_flush_cmplt	: in std_logic;
		-- MC8 port signals
		mc8_req_ld			: out std_logic;
		mc8_req_st			: out std_logic;
		mc8_req_size		: out std_logic_vector(1 downto 0);
		mc8_req_vaddr		: out std_logic_vector(47 downto 0);
		mc8_req_wrd_rdctl	: out std_logic_vector(63 downto 0);
		mc8_req_flush		: out std_logic;
		mc8_rd_rq_stall		: in std_logic;
		mc8_wr_rq_stall		: in std_logic;
		mc8_rsp_push		: in std_logic;
		mc8_rsp_stall		: out std_logic;
		mc8_rsp_data		: in std_logic_vector(63 downto 0);
		mc8_rsp_rdctl		: in std_logic_vector(31 downto 0);
		mc8_rsp_flush_cmplt	: in std_logic;
		-- MC9 port signals
		mc9_req_ld			: out std_logic;
		mc9_req_st			: out std_logic;
		mc9_req_size		: out std_logic_vector(1 downto 0);
		mc9_req_vaddr		: out std_logic_vector(47 downto 0);
		mc9_req_wrd_rdctl	: out std_logic_vector(63 downto 0);
		mc9_req_flush		: out std_logic;
		mc9_rd_rq_stall		: in std_logic;
		mc9_wr_rq_stall		: in std_logic;
		mc9_rsp_push		: in std_logic;
		mc9_rsp_stall		: out std_logic;
		mc9_rsp_data		: in std_logic_vector(63 downto 0);
		mc9_rsp_rdctl		: in std_logic_vector(31 downto 0);
		mc9_rsp_flush_cmplt	: in std_logic;
		-- MC10 port signals
		mc10_req_ld			: out std_logic;
		mc10_req_st			: out std_logic;
		mc10_req_size		: out std_logic_vector(1 downto 0);
		mc10_req_vaddr		: out std_logic_vector(47 downto 0);
		mc10_req_wrd_rdctl	: out std_logic_vector(63 downto 0);
		mc10_req_flush		: out std_logic;
		mc10_rd_rq_stall	: in std_logic;
		mc10_wr_rq_stall	: in std_logic;
		mc10_rsp_push		: in std_logic;
		mc10_rsp_stall		: out std_logic;
		mc10_rsp_data		: in std_logic_vector(63 downto 0);
		mc10_rsp_rdctl		: in std_logic_vector(31 downto 0);
		mc10_rsp_flush_cmplt: in std_logic;
		-- MC11 port signals
		mc11_req_ld			: out std_logic;
		mc11_req_st			: out std_logic;
		mc11_req_size		: out std_logic_vector(1 downto 0);
		mc11_req_vaddr		: out std_logic_vector(47 downto 0);
		mc11_req_wrd_rdctl	: out std_logic_vector(63 downto 0);
		mc11_req_flush		: out std_logic;
		mc11_rd_rq_stall	: in std_logic;
		mc11_wr_rq_stall	: in std_logic;
		mc11_rsp_push		: in std_logic;
		mc11_rsp_stall		: out std_logic;
		mc11_rsp_data		: in std_logic_vector(63 downto 0);
		mc11_rsp_rdctl		: in std_logic_vector(31 downto 0);
		mc11_rsp_flush_cmplt: in std_logic;
		-- MC12 port signals
		mc12_req_ld			: out std_logic;
		mc12_req_st			: out std_logic;
		mc12_req_size		: out std_logic_vector(1 downto 0);
		mc12_req_vaddr		: out std_logic_vector(47 downto 0);
		mc12_req_wrd_rdctl	: out std_logic_vector(63 downto 0);
		mc12_req_flush		: out std_logic;
		mc12_rd_rq_stall	: in std_logic;
		mc12_wr_rq_stall	: in std_logic;
		mc12_rsp_push		: in std_logic;
		mc12_rsp_stall		: out std_logic;
		mc12_rsp_data		: in std_logic_vector(63 downto 0);
		mc12_rsp_rdctl		: in std_logic_vector(31 downto 0);
		mc12_rsp_flush_cmplt: in std_logic;
		-- MC13 port signals
		mc13_req_ld			: out std_logic;
		mc13_req_st			: out std_logic;
		mc13_req_size		: out std_logic_vector(1 downto 0);
		mc13_req_vaddr		: out std_logic_vector(47 downto 0);
		mc13_req_wrd_rdctl	: out std_logic_vector(63 downto 0);
		mc13_req_flush		: out std_logic;
		mc13_rd_rq_stall	: in std_logic;
		mc13_wr_rq_stall	: in std_logic;
		mc13_rsp_push		: in std_logic;
		mc13_rsp_stall		: out std_logic;
		mc13_rsp_data		: in std_logic_vector(63 downto 0);
		mc13_rsp_rdctl		: in std_logic_vector(31 downto 0);
		mc13_rsp_flush_cmplt: in std_logic;
		-- MC14 port signals
		mc14_req_ld			: out std_logic;
		mc14_req_st			: out std_logic;
		mc14_req_size		: out std_logic_vector(1 downto 0);
		mc14_req_vaddr		: out std_logic_vector(47 downto 0);
		mc14_req_wrd_rdctl	: out std_logic_vector(63 downto 0);
		mc14_req_flush		: out std_logic;
		mc14_rd_rq_stall	: in std_logic;
		mc14_wr_rq_stall	: in std_logic;
		mc14_rsp_push		: in std_logic;
		mc14_rsp_stall		: out std_logic;
		mc14_rsp_data		: in std_logic_vector(63 downto 0);
		mc14_rsp_rdctl		: in std_logic_vector(31 downto 0);
		mc14_rsp_flush_cmplt: in std_logic;
		-- MC15 port signals
		mc15_req_ld			: out std_logic;
		mc15_req_st			: out std_logic;
		mc15_req_size		: out std_logic_vector(1 downto 0);
		mc15_req_vaddr		: out std_logic_vector(47 downto 0);
		mc15_req_wrd_rdctl	: out std_logic_vector(63 downto 0);
		mc15_req_flush		: out std_logic;
		mc15_rd_rq_stall	: in std_logic;
		mc15_wr_rq_stall	: in std_logic;
		mc15_rsp_push		: in std_logic;
		mc15_rsp_stall		: out std_logic;
		mc15_rsp_data		: in std_logic_vector(63 downto 0);
		mc15_rsp_rdctl		: in std_logic_vector(31 downto 0);
		mc15_rsp_flush_cmplt: in std_logic
	);
end entity;

architecture arch of cygraph is
	
	component cygraph_kernel is
		port (
			-- control signals
			clk					: in std_logic;
			rst					: in std_logic;
			enable				: in std_logic;
			busy				: out std_logic;	-- 0 processing, 1 otherwise
			done				: out std_logic;	-- 1 done processing, 0 other
			-- Kernel Parameters
			kernel_id			: in unsigned(7 downto 0); -- Kernel ID
			ae_id				: in std_logic_vector(1 downto 0); -- Application Engine ID
			kernels_count		: in unsigned(7 downto 0);
			current_level		: in unsigned(31 downto 0); -- Current Level
			cq_count			: in unsigned(31 downto 0); -- Number of nodes to visit in the current level
			-- kernels communication signals
			kernel_tx_done		: out std_logic;	-- 0 kernel done, 1 kernel working
			kernel_tx_vld		: out std_logic;
			kernel_tx_count		: out unsigned(31 downto 0);
			kernel_rx_done		: in std_logic;		-- 0 previous kernel done, 1 previous kernel working
			kernel_rx_vld		: in std_logic;
			kernel_rx_count		: in unsigned(31 downto 0);
			-- Input Graph Pointers (Represented in Custom CSR)
			graphData			: in std_logic_vector(63 downto 0);
			graphInfo			: in std_logic_vector(63 downto 0);
			-- Queue pointers
			cq_address			: in std_logic_vector(63 downto 0);
			nq_address			: in std_logic_vector(63 downto 0);
			-- MC request port signals
			mc_req_ld			: out std_logic;
			mc_req_st			: out std_logic;
			mc_req_size			: out std_logic_vector(1 downto 0);
			mc_req_vaddr		: out std_logic_vector(47 downto 0);
			mc_req_wrd_rdctl	: out std_logic_vector(63 downto 0);
			mc_rd_rq_stall		: in std_logic;
			mc_wr_rq_stall		: in std_logic;
			-- MC response port signals
			mc_rsp_push			: in std_logic;
			mc_rsp_stall		: out std_logic;
			mc_rsp_data			: in std_logic_vector(63 downto 0);
			mc_rsp_rdctl		: in std_logic_vector(31 downto 0)
		);
	end component;

	-- Input signals
	signal n				: std_logic_vector(63 downto 0); -- Number of nodes in graph
	signal non_zeros		: std_logic_vector(63 downto 0); -- Number of non-zero edges
	signal graphData		: std_logic_vector(63 downto 0);
	signal graphInfo		: std_logic_vector(63 downto 0);
	signal queue1_address	: std_logic_vector(63 downto 0);
	signal queue2_address	: std_logic_vector(63 downto 0);
	
	-- Master Process Signals
	signal kernels_count	: unsigned(7 downto 0) := x"40"; -- 64 kernels
	signal current_level	: unsigned(31 downto 0);
	signal cq_count			: unsigned(31 downto 0);

	type state is (st_idle, st_start, st_wait, st_busy, st_flush, st_done);
	signal cygraph_state	: state;

	-- Kernels control signals
	signal kernel_enable	: std_logic_vector(15 downto 0);
	signal kernel_done		: std_logic_vector(15 downto 0);
	signal kernel_busy		: std_logic_vector(15 downto 0);
	signal mc_flushed		: std_logic_vector(15 downto 0);
	signal cq_address		: std_logic_vector(63 downto 0);
	signal nq_address		: std_logic_vector(63 downto 0);

	-- Kernel-to-kernel communication signals
	type unsigned32	is array (0 to 15) of unsigned(31 downto 0);
	signal kernel_tx_done	: std_logic_vector(15 downto 0);
	signal kernel_tx_vld	: std_logic_vector(15 downto 0);
	signal kernel_tx_count	: unsigned32;
	
	signal master_tx_done	: std_logic;
	signal master_tx_vld	: std_logic;
	signal master_tx_count	: unsigned(31 downto 0);
	signal k2k_start		: std_logic;
	signal k0_rx_vld		: std_logic;

	signal nxtae_done		: std_logic;
	signal nxtae_count		: std_logic_vector(31 downto 0);
	signal done_sent_bw		: std_logic;
	signal done_sent_fw		: std_logic;
begin

	-- CyGraph Kernel 0
	k0 : cygraph_kernel
	port map (
		-- control signals
		clk					=> clk,
		rst					=> rst,
		enable				=> kernel_enable(0),
		busy				=> kernel_busy(0),
		done				=> kernel_done(0),
		-- Kernel Parameters
		kernel_id			=> x"00",
		ae_id				=> ae_id,
		kernels_count		=> kernels_count,		
		current_level		=> current_level,
		cq_count			=> cq_count,
		-- kernels communication signals
		kernel_tx_done		=> kernel_tx_done(0),
		kernel_tx_vld		=> kernel_tx_vld(0),
		kernel_tx_count		=> kernel_tx_count(0),
		kernel_rx_done		=> master_tx_done,
		kernel_rx_vld		=> k0_rx_vld, 			-- was master_tx_vld
		kernel_rx_count		=> master_tx_count,
		-- Input Graph Pointers (Represented in Custom CSR)
		graphData			=> graphData,
		graphInfo			=> graphInfo,
		-- Queue pointers
		cq_address			=> cq_address,
		nq_address			=> nq_address,
		-- MC0 request port signals
		mc_req_ld			=> mc0_req_ld,
		mc_req_st			=> mc0_req_st,
		mc_req_size			=> mc0_req_size,
		mc_req_vaddr		=> mc0_req_vaddr,
		mc_req_wrd_rdctl	=> mc0_req_wrd_rdctl,
		mc_rd_rq_stall		=> mc0_rd_rq_stall,
		mc_wr_rq_stall		=> mc0_wr_rq_stall,
		-- MC0 response port signals
		mc_rsp_push			=> mc0_rsp_push,
		mc_rsp_stall		=> mc0_rsp_stall,
		mc_rsp_data			=> mc0_rsp_data,
		mc_rsp_rdctl		=> mc0_rsp_rdctl
	);

	-- CyGraph Kernel 1
	k1 : cygraph_kernel
	port map (
		-- control signals
		clk					=> clk,
		rst					=> rst,
		enable				=> kernel_enable(1),
		busy				=> kernel_busy(1),
		done				=> kernel_done(1),
		-- Kernel Parameters
		kernel_id			=> x"01",
		ae_id				=> ae_id,
		kernels_count		=> kernels_count,		
		current_level		=> current_level,
		cq_count			=> cq_count,
		-- kernels communication signals
		kernel_tx_done		=> kernel_tx_done(1),
		kernel_tx_vld		=> kernel_tx_vld(1),
		kernel_tx_count		=> kernel_tx_count(1),
		kernel_rx_done		=> kernel_tx_done(0),
		kernel_rx_vld		=> kernel_tx_vld(0),
		kernel_rx_count		=> kernel_tx_count(0),
		-- Input Graph Pointers (Represented in Custom CSR)
		graphData			=> graphData,
		graphInfo			=> graphInfo,
		-- Queue pointers
		cq_address			=> cq_address,
		nq_address			=> nq_address,
		-- MC1 request port signals
		mc_req_ld			=> mc1_req_ld,
		mc_req_st			=> mc1_req_st,
		mc_req_size			=> mc1_req_size,
		mc_req_vaddr		=> mc1_req_vaddr,
		mc_req_wrd_rdctl	=> mc1_req_wrd_rdctl,
		mc_rd_rq_stall		=> mc1_rd_rq_stall,
		mc_wr_rq_stall		=> mc1_wr_rq_stall,
		-- MC1 response port signals
		mc_rsp_push			=> mc1_rsp_push,
		mc_rsp_stall		=> mc1_rsp_stall,
		mc_rsp_data			=> mc1_rsp_data,
		mc_rsp_rdctl		=> mc1_rsp_rdctl
	);

	-- CyGraph Kernel 2
	k2 : cygraph_kernel
	port map (
		-- control signals
		clk					=> clk,
		rst					=> rst,
		enable				=> kernel_enable(2),
		busy				=> kernel_busy(2),
		done				=> kernel_done(2),
		-- Kernel Parameters
		kernel_id			=> x"02",
		ae_id				=> ae_id,
		kernels_count		=> kernels_count,		
		current_level		=> current_level,
		cq_count			=> cq_count,
		-- kernels communication signals
		kernel_tx_done		=> kernel_tx_done(2),
		kernel_tx_vld		=> kernel_tx_vld(2),
		kernel_tx_count		=> kernel_tx_count(2),
		kernel_rx_done		=> kernel_tx_done(1),
		kernel_rx_vld		=> kernel_tx_vld(1),
		kernel_rx_count		=> kernel_tx_count(1),
		-- Input Graph Pointers (Represented in Custom CSR)
		graphData			=> graphData,
		graphInfo			=> graphInfo,
		-- Queue pointers
		cq_address			=> cq_address,
		nq_address			=> nq_address,
		-- MC2 request port signals
		mc_req_ld			=> mc2_req_ld,
		mc_req_st			=> mc2_req_st,
		mc_req_size			=> mc2_req_size,
		mc_req_vaddr		=> mc2_req_vaddr,
		mc_req_wrd_rdctl	=> mc2_req_wrd_rdctl,
		mc_rd_rq_stall		=> mc2_rd_rq_stall,
		mc_wr_rq_stall		=> mc2_wr_rq_stall,
		-- MC2 response port signals
		mc_rsp_push			=> mc2_rsp_push,
		mc_rsp_stall		=> mc2_rsp_stall,
		mc_rsp_data			=> mc2_rsp_data,
		mc_rsp_rdctl		=> mc2_rsp_rdctl
	);

	-- CyGraph Kernel 3
	k3 : cygraph_kernel
	port map (
		-- control signals
		clk					=> clk,
		rst					=> rst,
		enable				=> kernel_enable(3),
		busy				=> kernel_busy(3),
		done				=> kernel_done(3),
		-- Kernel Parameters
		kernel_id			=> x"03",
		ae_id				=> ae_id,
		kernels_count		=> kernels_count,		
		current_level		=> current_level,
		cq_count			=> cq_count,
		-- kernels communication signals
		kernel_tx_done		=> kernel_tx_done(3),
		kernel_tx_vld		=> kernel_tx_vld(3),
		kernel_tx_count		=> kernel_tx_count(3),
		kernel_rx_done		=> kernel_tx_done(2),
		kernel_rx_vld		=> kernel_tx_vld(2),
		kernel_rx_count		=> kernel_tx_count(2),
		-- Input Graph Pointers (Represented in Custom CSR)
		graphData			=> graphData,
		graphInfo			=> graphInfo,
		-- Queue pointers
		cq_address			=> cq_address,
		nq_address			=> nq_address,
		-- MC3 request port signals
		mc_req_ld			=> mc3_req_ld,
		mc_req_st			=> mc3_req_st,
		mc_req_size			=> mc3_req_size,
		mc_req_vaddr		=> mc3_req_vaddr,
		mc_req_wrd_rdctl	=> mc3_req_wrd_rdctl,
		mc_rd_rq_stall		=> mc3_rd_rq_stall,
		mc_wr_rq_stall		=> mc3_wr_rq_stall,
		-- MC3 response port signals
		mc_rsp_push			=> mc3_rsp_push,
		mc_rsp_stall		=> mc3_rsp_stall,
		mc_rsp_data			=> mc3_rsp_data,
		mc_rsp_rdctl		=> mc3_rsp_rdctl
	);

	-- CyGraph Kernel 4
	k4 : cygraph_kernel
	port map (
		-- control signals
		clk					=> clk,
		rst					=> rst,
		enable				=> kernel_enable(4),
		busy				=> kernel_busy(4),
		done				=> kernel_done(4),
		-- Kernel Parameters
		kernel_id			=> x"04",
		ae_id				=> ae_id,
		kernels_count		=> kernels_count,		
		current_level		=> current_level,
		cq_count			=> cq_count,
		-- kernels communication signals
		kernel_tx_done		=> kernel_tx_done(4),
		kernel_tx_vld		=> kernel_tx_vld(4),
		kernel_tx_count		=> kernel_tx_count(4),
		kernel_rx_done		=> kernel_tx_done(3),
		kernel_rx_vld		=> kernel_tx_vld(3),
		kernel_rx_count		=> kernel_tx_count(3),
		-- Input Graph Pointers (Represented in Custom CSR)
		graphData			=> graphData,
		graphInfo			=> graphInfo,
		-- Queue pointers
		cq_address			=> cq_address,
		nq_address			=> nq_address,
		-- MC4 request port signals
		mc_req_ld			=> mc4_req_ld,
		mc_req_st			=> mc4_req_st,
		mc_req_size			=> mc4_req_size,
		mc_req_vaddr		=> mc4_req_vaddr,
		mc_req_wrd_rdctl	=> mc4_req_wrd_rdctl,
		mc_rd_rq_stall		=> mc4_rd_rq_stall,
		mc_wr_rq_stall		=> mc4_wr_rq_stall,
		-- MC4 response port signals
		mc_rsp_push			=> mc4_rsp_push,
		mc_rsp_stall		=> mc4_rsp_stall,
		mc_rsp_data			=> mc4_rsp_data,
		mc_rsp_rdctl		=> mc4_rsp_rdctl
	);

	-- CyGraph Kernel 5
	k5 : cygraph_kernel
	port map (
		-- control signals
		clk					=> clk,
		rst					=> rst,
		enable				=> kernel_enable(5),
		busy				=> kernel_busy(5),
		done				=> kernel_done(5),
		-- Kernel Parameters
		kernel_id			=> x"05",
		ae_id				=> ae_id,
		kernels_count		=> kernels_count,		
		current_level		=> current_level,
		cq_count			=> cq_count,
		-- kernels communication signals
		kernel_tx_done		=> kernel_tx_done(5),
		kernel_tx_vld		=> kernel_tx_vld(5),
		kernel_tx_count		=> kernel_tx_count(5),
		kernel_rx_done		=> kernel_tx_done(4),
		kernel_rx_vld		=> kernel_tx_vld(4),
		kernel_rx_count		=> kernel_tx_count(4),
		-- Input Graph Pointers (Represented in Custom CSR)
		graphData			=> graphData,
		graphInfo			=> graphInfo,
		-- Queue pointers
		cq_address			=> cq_address,
		nq_address			=> nq_address,
		-- MC1 request port signals
		mc_req_ld			=> mc5_req_ld,
		mc_req_st			=> mc5_req_st,
		mc_req_size			=> mc5_req_size,
		mc_req_vaddr		=> mc5_req_vaddr,
		mc_req_wrd_rdctl	=> mc5_req_wrd_rdctl,
		mc_rd_rq_stall		=> mc5_rd_rq_stall,
		mc_wr_rq_stall		=> mc5_wr_rq_stall,
		-- MC1 response port signals
		mc_rsp_push			=> mc5_rsp_push,
		mc_rsp_stall		=> mc5_rsp_stall,
		mc_rsp_data			=> mc5_rsp_data,
		mc_rsp_rdctl		=> mc5_rsp_rdctl
	);

	-- CyGraph Kernel 6
	k6 : cygraph_kernel
	port map (
		-- control signals
		clk					=> clk,
		rst					=> rst,
		enable				=> kernel_enable(6),
		busy				=> kernel_busy(6),
		done				=> kernel_done(6),
		-- Kernel Parameters
		kernel_id			=> x"06",
		ae_id				=> ae_id,
		kernels_count		=> kernels_count,		
		current_level		=> current_level,
		cq_count			=> cq_count,
		-- kernels communication signals
		kernel_tx_done		=> kernel_tx_done(6),
		kernel_tx_vld		=> kernel_tx_vld(6),
		kernel_tx_count		=> kernel_tx_count(6),
		kernel_rx_done		=> kernel_tx_done(5),
		kernel_rx_vld		=> kernel_tx_vld(5),
		kernel_rx_count		=> kernel_tx_count(5),
		-- Input Graph Pointers (Represented in Custom CSR)
		graphData			=> graphData,
		graphInfo			=> graphInfo,
		-- Queue pointers
		cq_address			=> cq_address,
		nq_address			=> nq_address,
		-- MC6 request port signals
		mc_req_ld			=> mc6_req_ld,
		mc_req_st			=> mc6_req_st,
		mc_req_size			=> mc6_req_size,
		mc_req_vaddr		=> mc6_req_vaddr,
		mc_req_wrd_rdctl	=> mc6_req_wrd_rdctl,
		mc_rd_rq_stall		=> mc6_rd_rq_stall,
		mc_wr_rq_stall		=> mc6_wr_rq_stall,
		-- MC6 response port signals
		mc_rsp_push			=> mc6_rsp_push,
		mc_rsp_stall		=> mc6_rsp_stall,
		mc_rsp_data			=> mc6_rsp_data,
		mc_rsp_rdctl		=> mc6_rsp_rdctl
	);

	-- CyGraph Kernel 7
	k7 : cygraph_kernel
	port map (
		-- control signals
		clk					=> clk,
		rst					=> rst,
		enable				=> kernel_enable(7),
		busy				=> kernel_busy(7),
		done				=> kernel_done(7),
		-- Kernel Parameters
		kernel_id			=> x"07",
		ae_id				=> ae_id,
		kernels_count		=> kernels_count,		
		current_level		=> current_level,
		cq_count			=> cq_count,
		-- kernels communication signals
		kernel_tx_done		=> kernel_tx_done(7),
		kernel_tx_vld		=> kernel_tx_vld(7),
		kernel_tx_count		=> kernel_tx_count(7),
		kernel_rx_done		=> kernel_tx_done(6),
		kernel_rx_vld		=> kernel_tx_vld(6),
		kernel_rx_count		=> kernel_tx_count(6),
		-- Input Graph Pointers (Represented in Custom CSR)
		graphData			=> graphData,
		graphInfo			=> graphInfo,
		-- Queue pointers
		cq_address			=> cq_address,
		nq_address			=> nq_address,
		-- MC7 request port signals
		mc_req_ld			=> mc7_req_ld,
		mc_req_st			=> mc7_req_st,
		mc_req_size			=> mc7_req_size,
		mc_req_vaddr		=> mc7_req_vaddr,
		mc_req_wrd_rdctl	=> mc7_req_wrd_rdctl,
		mc_rd_rq_stall		=> mc7_rd_rq_stall,
		mc_wr_rq_stall		=> mc7_wr_rq_stall,
		-- MC7 response port signals
		mc_rsp_push			=> mc7_rsp_push,
		mc_rsp_stall		=> mc7_rsp_stall,
		mc_rsp_data			=> mc7_rsp_data,
		mc_rsp_rdctl		=> mc7_rsp_rdctl
	);

	-- CyGraph Kernel 8
	k8 : cygraph_kernel
	port map (
		-- control signals
		clk					=> clk,
		rst					=> rst,
		enable				=> kernel_enable(8),
		busy				=> kernel_busy(8),
		done				=> kernel_done(8),
		-- Kernel Parameters
		kernel_id			=> x"08",
		ae_id				=> ae_id,
		kernels_count		=> kernels_count,		
		current_level		=> current_level,
		cq_count			=> cq_count,
		-- kernels communication signals
		kernel_tx_done		=> kernel_tx_done(8),
		kernel_tx_vld		=> kernel_tx_vld(8),
		kernel_tx_count		=> kernel_tx_count(8),
		kernel_rx_done		=> kernel_tx_done(7),
		kernel_rx_vld		=> kernel_tx_vld(7),
		kernel_rx_count		=> kernel_tx_count(7),
		-- Input Graph Pointers (Represented in Custom CSR)
		graphData			=> graphData,
		graphInfo			=> graphInfo,
		-- Queue pointers
		cq_address			=> cq_address,
		nq_address			=> nq_address,
		-- MC8 request port signals
		mc_req_ld			=> mc8_req_ld,
		mc_req_st			=> mc8_req_st,
		mc_req_size			=> mc8_req_size,
		mc_req_vaddr		=> mc8_req_vaddr,
		mc_req_wrd_rdctl	=> mc8_req_wrd_rdctl,
		mc_rd_rq_stall		=> mc8_rd_rq_stall,
		mc_wr_rq_stall		=> mc8_wr_rq_stall,
		-- MC8 response port signals
		mc_rsp_push			=> mc8_rsp_push,
		mc_rsp_stall		=> mc8_rsp_stall,
		mc_rsp_data			=> mc8_rsp_data,
		mc_rsp_rdctl		=> mc8_rsp_rdctl
	);

	-- CyGraph Kernel 9
	k9 : cygraph_kernel
	port map (
		-- control signals
		clk					=> clk,
		rst					=> rst,
		enable				=> kernel_enable(9),
		busy				=> kernel_busy(9),
		done				=> kernel_done(9),
		-- Kernel Parameters
		kernel_id			=> x"09",
		ae_id				=> ae_id,
		kernels_count		=> kernels_count,		
		current_level		=> current_level,
		cq_count			=> cq_count,
		-- kernels communication signals
		kernel_tx_done		=> kernel_tx_done(9),
		kernel_tx_vld		=> kernel_tx_vld(9),
		kernel_tx_count		=> kernel_tx_count(9),
		kernel_rx_done		=> kernel_tx_done(8),
		kernel_rx_vld		=> kernel_tx_vld(8),
		kernel_rx_count		=> kernel_tx_count(8),
		-- Input Graph Pointers (Represented in Custom CSR)
		graphData			=> graphData,
		graphInfo			=> graphInfo,
		-- Queue pointers
		cq_address			=> cq_address,
		nq_address			=> nq_address,
		-- MC9 request port signals
		mc_req_ld			=> mc9_req_ld,
		mc_req_st			=> mc9_req_st,
		mc_req_size			=> mc9_req_size,
		mc_req_vaddr		=> mc9_req_vaddr,
		mc_req_wrd_rdctl	=> mc9_req_wrd_rdctl,
		mc_rd_rq_stall		=> mc9_rd_rq_stall,
		mc_wr_rq_stall		=> mc9_wr_rq_stall,
		-- MC9 response port signals
		mc_rsp_push			=> mc9_rsp_push,
		mc_rsp_stall		=> mc9_rsp_stall,
		mc_rsp_data			=> mc9_rsp_data,
		mc_rsp_rdctl		=> mc9_rsp_rdctl
	);

	-- CyGraph Kernel 10
	k10 : cygraph_kernel
	port map (
		-- control signals
		clk					=> clk,
		rst					=> rst,
		enable				=> kernel_enable(10),
		busy				=> kernel_busy(10),
		done				=> kernel_done(10),
		-- Kernel Parameters
		kernel_id			=> x"0A",
		ae_id				=> ae_id,
		kernels_count		=> kernels_count,		
		current_level		=> current_level,
		cq_count			=> cq_count,
		-- kernels communication signals
		kernel_tx_done		=> kernel_tx_done(10),
		kernel_tx_vld		=> kernel_tx_vld(10),
		kernel_tx_count		=> kernel_tx_count(10),
		kernel_rx_done		=> kernel_tx_done(9),
		kernel_rx_vld		=> kernel_tx_vld(9),
		kernel_rx_count		=> kernel_tx_count(9),
		-- Input Graph Pointers (Represented in Custom CSR)
		graphData			=> graphData,
		graphInfo			=> graphInfo,
		-- Queue pointers
		cq_address			=> cq_address,
		nq_address			=> nq_address,
		-- MC10 request port signals
		mc_req_ld			=> mc10_req_ld,
		mc_req_st			=> mc10_req_st,
		mc_req_size			=> mc10_req_size,
		mc_req_vaddr		=> mc10_req_vaddr,
		mc_req_wrd_rdctl	=> mc10_req_wrd_rdctl,
		mc_rd_rq_stall		=> mc10_rd_rq_stall,
		mc_wr_rq_stall		=> mc10_wr_rq_stall,
		-- MC10 response port signals
		mc_rsp_push			=> mc10_rsp_push,
		mc_rsp_stall		=> mc10_rsp_stall,
		mc_rsp_data			=> mc10_rsp_data,
		mc_rsp_rdctl		=> mc10_rsp_rdctl
	);

	-- CyGraph Kernel 11
	k11 : cygraph_kernel
	port map (
		-- control signals
		clk					=> clk,
		rst					=> rst,
		enable				=> kernel_enable(11),
		busy				=> kernel_busy(11),
		done				=> kernel_done(11),
		-- Kernel Parameters
		kernel_id			=> x"0B",
		ae_id				=> ae_id,
		kernels_count		=> kernels_count,		
		current_level		=> current_level,
		cq_count			=> cq_count,
		-- kernels communication signals
		kernel_tx_done		=> kernel_tx_done(11),
		kernel_tx_vld		=> kernel_tx_vld(11),
		kernel_tx_count		=> kernel_tx_count(11),
		kernel_rx_done		=> kernel_tx_done(10),
		kernel_rx_vld		=> kernel_tx_vld(10),
		kernel_rx_count		=> kernel_tx_count(10),
		-- Input Graph Pointers (Represented in Custom CSR)
		graphData			=> graphData,
		graphInfo			=> graphInfo,
		-- Queue pointers
		cq_address			=> cq_address,
		nq_address			=> nq_address,
		-- MC11 request port signals
		mc_req_ld			=> mc11_req_ld,
		mc_req_st			=> mc11_req_st,
		mc_req_size			=> mc11_req_size,
		mc_req_vaddr		=> mc11_req_vaddr,
		mc_req_wrd_rdctl	=> mc11_req_wrd_rdctl,
		mc_rd_rq_stall		=> mc11_rd_rq_stall,
		mc_wr_rq_stall		=> mc11_wr_rq_stall,
		-- MC11 response port signals
		mc_rsp_push			=> mc11_rsp_push,
		mc_rsp_stall		=> mc11_rsp_stall,
		mc_rsp_data			=> mc11_rsp_data,
		mc_rsp_rdctl		=> mc11_rsp_rdctl
	);

	-- CyGraph Kernel 12
	k12 : cygraph_kernel
	port map (
		-- control signals
		clk					=> clk,
		rst					=> rst,
		enable				=> kernel_enable(12),
		busy				=> kernel_busy(12),
		done				=> kernel_done(12),
		-- Kernel Parameters
		kernel_id			=> x"0C",
		ae_id				=> ae_id,
		kernels_count		=> kernels_count,		
		current_level		=> current_level,
		cq_count			=> cq_count,
		-- kernels communication signals
		kernel_tx_done		=> kernel_tx_done(12),
		kernel_tx_vld		=> kernel_tx_vld(12),
		kernel_tx_count		=> kernel_tx_count(12),
		kernel_rx_done		=> kernel_tx_done(11),
		kernel_rx_vld		=> kernel_tx_vld(11),
		kernel_rx_count		=> kernel_tx_count(11),
		-- Input Graph Pointers (Represented in Custom CSR)
		graphData			=> graphData,
		graphInfo			=> graphInfo,
		-- Queue pointers
		cq_address			=> cq_address,
		nq_address			=> nq_address,
		-- MC12 request port signals
		mc_req_ld			=> mc12_req_ld,
		mc_req_st			=> mc12_req_st,
		mc_req_size			=> mc12_req_size,
		mc_req_vaddr		=> mc12_req_vaddr,
		mc_req_wrd_rdctl	=> mc12_req_wrd_rdctl,
		mc_rd_rq_stall		=> mc12_rd_rq_stall,
		mc_wr_rq_stall		=> mc12_wr_rq_stall,
		-- MC12 response port signals
		mc_rsp_push			=> mc12_rsp_push,
		mc_rsp_stall		=> mc12_rsp_stall,
		mc_rsp_data			=> mc12_rsp_data,
		mc_rsp_rdctl		=> mc12_rsp_rdctl
	);

	-- CyGraph Kernel 13
	k13 : cygraph_kernel
	port map (
		-- control signals
		clk					=> clk,
		rst					=> rst,
		enable				=> kernel_enable(13),
		busy				=> kernel_busy(13),
		done				=> kernel_done(13),
		-- Kernel Parameters
		kernel_id			=> x"0D",
		ae_id				=> ae_id,
		kernels_count		=> kernels_count,		
		current_level		=> current_level,
		cq_count			=> cq_count,
		-- kernels communication signals
		kernel_tx_done		=> kernel_tx_done(13),
		kernel_tx_vld		=> kernel_tx_vld(13),
		kernel_tx_count		=> kernel_tx_count(13),
		kernel_rx_done		=> kernel_tx_done(12),
		kernel_rx_vld		=> kernel_tx_vld(12),
		kernel_rx_count		=> kernel_tx_count(12),
		-- Input Graph Pointers (Represented in Custom CSR)
		graphData			=> graphData,
		graphInfo			=> graphInfo,
		-- Queue pointers
		cq_address			=> cq_address,
		nq_address			=> nq_address,
		-- MC13 request port signals
		mc_req_ld			=> mc13_req_ld,
		mc_req_st			=> mc13_req_st,
		mc_req_size			=> mc13_req_size,
		mc_req_vaddr		=> mc13_req_vaddr,
		mc_req_wrd_rdctl	=> mc13_req_wrd_rdctl,
		mc_rd_rq_stall		=> mc13_rd_rq_stall,
		mc_wr_rq_stall		=> mc13_wr_rq_stall,
		-- MC13 response port signals
		mc_rsp_push			=> mc13_rsp_push,
		mc_rsp_stall		=> mc13_rsp_stall,
		mc_rsp_data			=> mc13_rsp_data,
		mc_rsp_rdctl		=> mc13_rsp_rdctl
	);

	-- CyGraph Kernel 14
	k14 : cygraph_kernel
	port map (
		-- control signals
		clk					=> clk,
		rst					=> rst,
		enable				=> kernel_enable(14),
		busy				=> kernel_busy(14),
		done				=> kernel_done(14),
		-- Kernel Parameters
		kernel_id			=> x"0E",
		ae_id				=> ae_id,
		kernels_count		=> kernels_count,		
		current_level		=> current_level,
		cq_count			=> cq_count,
		-- kernels communication signals
		kernel_tx_done		=> kernel_tx_done(14),
		kernel_tx_vld		=> kernel_tx_vld(14),
		kernel_tx_count		=> kernel_tx_count(14),
		kernel_rx_done		=> kernel_tx_done(13),
		kernel_rx_vld		=> kernel_tx_vld(13),
		kernel_rx_count		=> kernel_tx_count(13),
		-- Input Graph Pointers (Represented in Custom CSR)
		graphData			=> graphData,
		graphInfo			=> graphInfo,
		-- Queue pointers
		cq_address			=> cq_address,
		nq_address			=> nq_address,
		-- MC14 request port signals
		mc_req_ld			=> mc14_req_ld,
		mc_req_st			=> mc14_req_st,
		mc_req_size			=> mc14_req_size,
		mc_req_vaddr		=> mc14_req_vaddr,
		mc_req_wrd_rdctl	=> mc14_req_wrd_rdctl,
		mc_rd_rq_stall		=> mc14_rd_rq_stall,
		mc_wr_rq_stall		=> mc14_wr_rq_stall,
		-- MC14 response port signals
		mc_rsp_push			=> mc14_rsp_push,
		mc_rsp_stall		=> mc14_rsp_stall,
		mc_rsp_data			=> mc14_rsp_data,
		mc_rsp_rdctl		=> mc14_rsp_rdctl
	);

	-- CyGraph Kernel 15
	k15 : cygraph_kernel
	port map (
		-- control signals
		clk					=> clk,
		rst					=> rst,
		enable				=> kernel_enable(15),
		busy				=> kernel_busy(15),
		done				=> kernel_done(15),
		-- Kernel Parameters
		kernel_id			=> x"0F",
		ae_id				=> ae_id,
		kernels_count		=> kernels_count,		
		current_level		=> current_level,
		cq_count			=> cq_count,
		-- kernels communication signals
		kernel_tx_done		=> kernel_tx_done(15),
		kernel_tx_vld		=> kernel_tx_vld(15),
		kernel_tx_count		=> kernel_tx_count(15),
		kernel_rx_done		=> kernel_tx_done(14),
		kernel_rx_vld		=> kernel_tx_vld(14),
		kernel_rx_count		=> kernel_tx_count(14),
		-- Input Graph Pointers (Represented in Custom CSR)
		graphData			=> graphData,
		graphInfo			=> graphInfo,
		-- Queue pointers
		cq_address			=> cq_address,
		nq_address			=> nq_address,
		-- MC15 request port signals
		mc_req_ld			=> mc15_req_ld,
		mc_req_st			=> mc15_req_st,
		mc_req_size			=> mc15_req_size,
		mc_req_vaddr		=> mc15_req_vaddr,
		mc_req_wrd_rdctl	=> mc15_req_wrd_rdctl,
		mc_rd_rq_stall		=> mc15_rd_rq_stall,
		mc_wr_rq_stall		=> mc15_wr_rq_stall,
		-- MC15 response port signals
		mc_rsp_push			=> mc15_rsp_push,
		mc_rsp_stall		=> mc15_rsp_stall,
		mc_rsp_data			=> mc15_rsp_data,
		mc_rsp_rdctl		=> mc15_rsp_rdctl
	);

	-- master_tx_done	<= '1';
	-- master_tx_done	<= '1' when ae_id = "00" else prvae_rx_data(31) when prvae_rx_vld = '1' else master_tx_done;
	-- master_tx_count		<= (others => '0') when cygraph_state = st_start and ae_id = "00" else
	-- 					   (others => '0') when enable = '1' else
	-- 					   ('0' & unsigned(prvae_rx_data(30 downto 0))) when prvae_rx_vld = '1' else master_tx_count;
	-- k0_rx_vld			<= master_tx_vld when ae_id = "00" else prvae_rx_vld;
	prvae_tx_vld		<= '0';
	prvae_tx_data		<= (others => '0');

	ae_ae : process (clk, rst)
	begin
		if (rising_edge(clk)) then
			if (rst = '1') then
				prvae_tx_vld		<= '0';
				prvae_tx_data		<= (others => '0');
				nxtae_tx_vld		<= '0';
				nxtae_tx_data		<= (others => '0');
				nxtae_done			<= '0';
				master_tx_done		<= '0';
				master_tx_count		<= (others => '0');
				done_sent_bw		<= '0';
				done_sent_fw		<= '0';
				nq_count_out		<= (others => '0');
				k0_rx_vld			<= '0';
			else
				-- Control done_sent_fw
				if (cygraph_state = st_start or enable = '1') then
					done_sent_fw	<= '0';
					nq_count_out	<= (others => '0');
				elsif (prvae_rx_vld = '1' and prvae_rx_data(31) = '1') then
					done_sent_fw	<= '1';
					nq_count_out	<= x"00000000" & '0' & std_logic_vector(prvae_rx_data(30 downto 0));
				end if;

				-- Control nxtae_tx_vld, nxtae_tx_data
				if (cygraph_state = st_start or enable = '1' or (ae_id = "00" and done_sent_fw = '1')) then
					nxtae_tx_vld	<= '0';
					nxtae_tx_data	<= (others => '0');
				else
					nxtae_tx_vld		<= kernel_tx_vld(15);
					nxtae_tx_data		<= kernel_tx_done(15) & std_logic_vector(resize(kernel_tx_count(15), 31));
				end if;

				-- Control master_tx_count
				if ((cygraph_state = st_start and ae_id = "00") or enable = '1') then
					master_tx_count		<= (others => '0');
				elsif (prvae_rx_vld = '1') then
					master_tx_count		<= ('0' & unsigned(prvae_rx_data(30 downto 0)));
				end if;

				-- Control master_tx_done, k0_rx_vld, master_tx_count
				if (cygraph_state = st_start or enable = '1') then
					master_tx_done		<= '0';
					k0_rx_vld			<= '0';
				else
					if (ae_id = "00" and done_sent_fw = '1') then
						master_tx_done 	<= '0';
						k0_rx_vld		<= '0';
					elsif (ae_id = "00") then
						master_tx_done 	<= '1';
						k0_rx_vld		<= master_tx_vld;
					elsif (prvae_rx_vld = '1') then
						master_tx_done	<= prvae_rx_data(31);
						k0_rx_vld		<= '1';
					else
						master_tx_done	<= master_tx_done;
						k0_rx_vld		<= '0';
					end if;
				end if;

				-- Control nxtae_done, nxtae_count
				if (cygraph_state = st_start or enable = '1') then
					nxtae_done 		<= '0';
					nxtae_count		<= (others => '0');
				else
					if (ae_id = "11") then 
						nxtae_done 	<= kernel_tx_done(15);
						nxtae_count	<= std_logic_vector(kernel_tx_count(15));
					elsif (nxtae_rx_vld = '1') then
						nxtae_done	<= '1';
						nxtae_count <= nxtae_rx_data;
					end if;
				end if;

				-- -- Control prvae_tx_vld, prvae_tx_data
				-- if (cygraph_state = st_start) then
				-- 	prvae_tx_vld	<= '0';
				-- 	prvae_tx_data	<= (others => '0');
				-- 	done_sent_bw		<= '0';
				-- elsif (kernel_tx_done(15) = '1' and done_sent_bw = '0' and nxtae_done = '1') then
				-- 	prvae_tx_vld 	<= '1';
				-- 	prvae_tx_data	<= nxtae_count;
				-- 	done_sent_bw	<= '1';
				-- else
				-- 	prvae_tx_vld	<= '0';
				-- end if;
			end if;
		end if;
	end process; -- ae_ae

	master : process(clk, rst)
	begin
		if rising_edge(clk) then
			if (rst = '1') then
				busy			<= '0';
				done			<= '0';
				cygraph_state	<= st_idle;
				kernel_enable	<= (others => '0');
				queue1_address	<= (others => '0');
				queue2_address	<= (others => '0');
				cq_address		<= (others => '0');
				nq_address		<= (others => '0');
				-- reset data
				n				<= (others => '0');
				non_zeros 		<= (others => '0');
				graphData		<= (others => '0');
				graphInfo		<= (others => '0');

				cq_count		<= (others => '0');
				current_level	<= (others => '0');
				-- reset flush
				mc_flushed		<= (others => '0');
				mc0_req_flush	<= '0';
				mc1_req_flush	<= '0';
				mc2_req_flush	<= '0';
				mc3_req_flush	<= '0';
				mc4_req_flush	<= '0';
				mc5_req_flush	<= '0';
				mc6_req_flush	<= '0';
				mc7_req_flush	<= '0';
				mc8_req_flush	<= '0';
				mc9_req_flush	<= '0';
				mc10_req_flush	<= '0';
				mc11_req_flush	<= '0';
				mc12_req_flush	<= '0';
				mc13_req_flush	<= '0';
				mc14_req_flush	<= '0';
				mc15_req_flush	<= '0';
			else
				case (cygraph_state) is
					when st_idle =>
						done			<= '0';
						-- reset flush
						mc_flushed		<= (others => '0');
						mc0_req_flush	<= '0';
						mc1_req_flush	<= '0';
						mc2_req_flush	<= '0';
						mc3_req_flush	<= '0';
						mc4_req_flush	<= '0';
						mc5_req_flush	<= '0';
						mc6_req_flush	<= '0';
						mc7_req_flush	<= '0';
						mc8_req_flush	<= '0';
						mc9_req_flush	<= '0';
						mc10_req_flush	<= '0';
						mc11_req_flush	<= '0';
						mc12_req_flush	<= '0';
						mc13_req_flush	<= '0';
						mc14_req_flush	<= '0';
						mc15_req_flush	<= '0';

						if (enable = '1') then
							busy			<= '1';
							n				<= n_in;
							non_zeros		<= non_zeros_in;
							graphData		<= graphData_in;
							graphInfo		<= graphInfo_in;
							queue1_address	<= queue1_address_in;
							queue2_address	<= queue2_address_in;
							
							current_level	<= unsigned(current_level_in(31 downto 0));
							cq_count		<= unsigned(cq_count_in(31 downto 0));

							kernel_enable	<= x"FFFF";					-- set enable early, to allow k2k process in kernel to work
							cygraph_state	<= st_start;
						else
							busy			<= '0';
							kernel_enable	<= x"0000";
							cygraph_state	<= st_idle;
						end if ;

					when st_start =>
						if (kernel_busy = x"0000") then
							kernel_enable	<= x"FFFF";
							cq_address 		<= queue1_address;
							nq_address		<= queue2_address;
							cygraph_state 	<= st_wait;
						else
							cygraph_state	<= st_start;
						end if;

					when st_wait =>
						kernel_enable	<= x"0000";
						cygraph_state 	<= st_busy;

					-- Wait ffor a level to be done
					when st_busy =>
						-- if (prvae_rx_vld = '1') then
						-- 	nq_count_out	<= x"00000000" & '0' & std_logic_vector(prvae_rx_data(30 downto 0));
						-- end if;
						if (kernel_busy = x"0000" and kernel_tx_done = x"FFFF" and (ae_id /= "00" or (ae_id = "00" and done_sent_fw = '1'))) then
						-- if (kernel_busy = x"0000" and kernel_tx_done(15) = '1') then
						-- if (kernel_busy = x"0000" and kernel_tx_done(15) = '1' and nxtae_done = '1') then
							-- level is done
							-- nq_count_out	<= x"00000000" & nxtae_count;
							mc_flushed		<= (others => '0');
							mc0_req_flush	<= '1';
							mc1_req_flush	<= '1';
							mc2_req_flush	<= '1';
							mc3_req_flush	<= '1';
							mc4_req_flush	<= '1';
							mc5_req_flush	<= '1';
							mc6_req_flush	<= '1';
							mc7_req_flush	<= '1';
							mc8_req_flush	<= '1';
							mc9_req_flush	<= '1';
							mc10_req_flush	<= '1';
							mc11_req_flush	<= '1';
							mc12_req_flush	<= '1';
							mc13_req_flush	<= '1';
							mc14_req_flush	<= '1';
							mc15_req_flush	<= '1';

							cygraph_state	<= st_flush;
						else
							cygraph_state 	<= st_busy;
						end if;

					-- wait for flush to complete
					when st_flush =>
						mc0_req_flush		<= '0';
						mc1_req_flush		<= '0';
						mc2_req_flush		<= '0';
						mc3_req_flush		<= '0';
						mc4_req_flush		<= '0';
						mc5_req_flush		<= '0';
						mc6_req_flush		<= '0';
						mc7_req_flush		<= '0';
						mc8_req_flush		<= '0';
						mc9_req_flush		<= '0';
						mc10_req_flush		<= '0';
						mc11_req_flush		<= '0';
						mc12_req_flush		<= '0';
						mc13_req_flush		<= '0';
						mc14_req_flush		<= '0';
						mc15_req_flush		<= '0';
						
						if (mc0_rsp_flush_cmplt = '1') then
							mc_flushed(0)		<= '1';
						end if;
						if (mc1_rsp_flush_cmplt = '1') then
							mc_flushed(1)		<= '1';
						end if;
						if (mc2_rsp_flush_cmplt = '1') then
							mc_flushed(2)		<= '1';
						end if;
						if (mc3_rsp_flush_cmplt = '1') then
							mc_flushed(3)		<= '1';
						end if;
						if (mc4_rsp_flush_cmplt = '1') then
							mc_flushed(4)		<= '1';
						end if;
						if (mc5_rsp_flush_cmplt = '1') then
							mc_flushed(5)		<= '1';
						end if;
						if (mc6_rsp_flush_cmplt = '1') then
							mc_flushed(6)		<= '1';
						end if;
						if (mc7_rsp_flush_cmplt = '1') then
							mc_flushed(7)		<= '1';
						end if;
						if (mc8_rsp_flush_cmplt = '1') then
							mc_flushed(8)		<= '1';
						end if;
						if (mc9_rsp_flush_cmplt = '1') then
							mc_flushed(9)		<= '1';
						end if;
						if (mc10_rsp_flush_cmplt = '1') then
							mc_flushed(10)		<= '1';
						end if;
						if (mc11_rsp_flush_cmplt = '1') then
							mc_flushed(11)		<= '1';
						end if;
						if (mc12_rsp_flush_cmplt = '1') then
							mc_flushed(12)		<= '1';
						end if;
						if (mc13_rsp_flush_cmplt = '1') then
							mc_flushed(13)		<= '1';
						end if;
						if (mc14_rsp_flush_cmplt = '1') then
							mc_flushed(14)		<= '1';
						end if;
						if (mc15_rsp_flush_cmplt = '1') then
							mc_flushed(15)		<= '1';
						end if;

						if (mc_flushed = x"FFFF") then -- Just check the first flush_cmplt
							cygraph_state		<= st_done;
						else
							cygraph_state		<= st_flush;
						end if;

					-- Cygraph is done
					when st_done =>
						done			<= '1';
						busy			<= '0';
						cygraph_state	<= st_idle;
					when others =>
						cygraph_state	<= st_idle;
				end case;
			end if; -- end if rst
		end if; -- end if clk
	end process; -- master


	-- Kernel-to-kenrel process
	--- Start and control the kernel_tx_vld signals
	k2k : process (clk, rst)
	begin
		if (rising_edge(clk)) then
			if (rst = '1') then
				k2k_start		<= '0';
				master_tx_vld	<= '0';
			else
				-- If kernel idle, reset signals
				if (cygraph_state = st_start or enable = '1') then
				-- if (cygraph_state = st_idle) then
					k2k_start		<= '0';
					master_tx_vld	<= '0';
				-- elsif (cygraph_state = st_busy) then
				else
					-- If the start of the level, issue a vld signal
					if (k2k_start = '0') then
						master_tx_vld	<= '1';
						k2k_start		<= '1';
					else
						-- if valid signal, pass it to next kernel in the ring
						-- if (kernel_tx_vld(15) = '1') then
						if (prvae_rx_vld = '1') then
							master_tx_vld	<= '1';
						else
							master_tx_vld	<= '0';
						end if;
					end if;
				-- else
				-- 	k2k_start		<= '0';
				-- 	master_tx_vld	<= '0';
				end if;	-- end if kernel state
			end if; -- end if rst
		end if; -- end if clk
	end process; -- Kernel-to-kernel communication

end architecture;