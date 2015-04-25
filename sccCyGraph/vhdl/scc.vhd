library ieee ;
	use ieee.std_logic_1164.all ;
	use ieee.numeric_std.all ;
	-- use ieee.std_logic_unsigned.all;

library unisim;
	use unisim.vcomponents.all;

entity scc is
	port (
		-- control signals
		clk					: in std_logic;
		rst					: in std_logic;
		enable				: in std_logic;
		busy				: out std_logic;	-- 0 processing, 1 otherwise
		done				: out std_logic; 	-- 1 done processing, 0 other
		-- SCC Parameters
		color_in			: in std_logic_vector(63 downto 0); -- Color all nodes in the SCC with that color
		scc_addr_in		    : in std_logic_vector(63 downto 0);
		nextv_out			: out std_logic_vector(63 downto 0); -- Possible start node for next SCC
		-- Graph/ReversedGraph Pointers
		n_in                : in std_logic_vector(63 downto 0);
		graph_info_in		: in std_logic_vector(63 downto 0);
		rgraph_info_in		: in std_logic_vector(63 downto 0);
		-- Reach queues pointers
		fw_addr_in			: in std_logic_vector(63 downto 0);
		fw_count_in			: in std_logic_vector(63 downto 0);
		bw_addr_in			: in std_logic_vector(63 downto 0);
		bw_count_in			: in std_logic_vector(63 downto 0);
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

architecture arch of scc is
	
	component scc_kernel is
		port (
			-- control signals
			clk                  : in std_logic;
			rst                  : in std_logic;
			enable               : in std_logic;
			busy                 : out std_logic;	-- 0 processing, 1 otherwise
			done                 : out std_logic;	-- 1 done processing, 0 other
			-- Kernel Parameters
			kernel_id            : in unsigned(7 downto 0); -- Kernel ID
			ae_id                : in std_logic_vector(1 downto 0); -- Application Engine ID
			kernels_count        : in unsigned(7 downto 0);
			-- kernels communication signals
			kernel_tx_vld        : out std_logic;	-- 1 if found nextv
			kernel_tx_nextv      : out std_logic_vector(63 downto 0);
			kernel_rx_vld        : in std_logic;
			kernel_rx_nextv      : in std_logic_vector(63 downto 0);
			-- Input Graph Prameters (Represented in Custom CSR)
			N                    : in std_logic_vector(63 downto 0);
			graph_info           : in std_logic_vector(63 downto 0);
			rgraph_info          : in std_logic_vector(63 downto 0);
			-- SCC intersection parameters
			color                : in std_logic_vector(63 downto 0); -- Color to be used to color nodes
			fw_queue             : in std_logic_vector(63 downto 0); -- FW Reach queue pointer (could be FW or BW reach queue)
			fw_count             : in std_logic_vector(63 downto 0); -- Number of nodes in FW reach queue
			bw_queue             : in std_logic_vector(63 downto 0); -- BW Reach queue pointer (could be FW or BW reach queue)
			bw_count             : in std_logic_vector(63 downto 0); -- Number of nodes in BW reach queue
			scc_results          : in std_logic_vector(63 downto 0); -- Where we store the color of each node
			-- Parameters for next kernel
			nxtk_rst             : out std_logic;
			nxtk_enable          : out std_logic;
			nextk_busy           : in std_logic;
			nextk_done           : in std_logic;
			nxtk_N               : out std_logic_vector(63 downto 0);
			nxtk_graph_info      : out std_logic_vector(63 downto 0);
			nxtk_rgraph_info     : out std_logic_vector(63 downto 0);
			nxtk_color           : out std_logic_vector(63 downto 0);
			nxtk_fw_queue        : out std_logic_vector(63 downto 0);
			nxtk_fw_count        : out std_logic_vector(63 downto 0);
			nxtk_bw_queue        : out std_logic_vector(63 downto 0);
			nxtk_bw_count        : out std_logic_vector(63 downto 0);
			nxtk_scc_results     : out std_logic_vector(63 downto 0);
			-- MC request port signals
			mc_req_ld            : out std_logic;
			mc_req_st            : out std_logic;
			mc_req_size          : out std_logic_vector(1 downto 0);
			mc_req_vaddr         : out std_logic_vector(47 downto 0);
			mc_req_wrd_rdctl     : out std_logic_vector(63 downto 0);
			mc_rd_rq_stall       : in std_logic;
			mc_wr_rq_stall       : in std_logic;
			-- MC response port signals
			mc_rsp_push          : in std_logic;
			mc_rsp_stall         : out std_logic;
			mc_rsp_data          : in std_logic_vector(63 downto 0);
			mc_rsp_rdctl         : in std_logic_vector(31 downto 0);
			-- MC flush signals
			mc_req_flush         : out std_logic;
			mc_rsp_flush_cmplt   : in std_logic
		);
	end component;

	-- Input signals
	signal n               : std_logic_vector(63 downto 0);
	signal color           : std_logic_vector(63 downto 0);
	signal scc_addr        : std_logic_vector(63 downto 0);
	signal graph_info      : std_logic_vector(63 downto 0);
	signal rgraph_info     : std_logic_vector(63 downto 0);
	signal fw_addr         : std_logic_vector(63 downto 0);
	signal fw_count        : std_logic_vector(63 downto 0);
	signal bw_addr         : std_logic_vector(63 downto 0);
	signal bw_count        : std_logic_vector(63 downto 0);
	
	-- Master Process Signals
	signal r_rst            : std_logic;
	signal r_enable         : std_logic;
	signal kernels_count    : unsigned(7 downto 0) := x"20"; -- 64 kernels = 0x40 , 32 kernels = 0x32

	type state is (st_idle, st_start, st_wait, st_busy, st_done);
	signal scc_state        : state;

	-- Kernels control signals
	signal kernels_enable   : std_logic;
	signal kernels_done     : std_logic;
	signal kernels_busy     : std_logic;

	-- Kernel-to-kernel communication signals
	type array_of_slv64	is array (0 to 15) of std_logic_vector(63 downto 0);
	signal kernel_tx_vld	: std_logic_vector(15 downto 0);
	signal kernel_tx_nextv	: array_of_slv64;
	signal nxtk_rst         : std_logic_vector(15 downto 0);
	signal nxtk_enable      : std_logic_vector(15 downto 0);
	signal nextk_busy       : std_logic_vector(15 downto 0);
	signal nextk_done       : std_logic_vector(15 downto 0);
	signal nxtk_N           : array_of_slv64;
	signal nxtk_graph_info  : array_of_slv64;
	signal nxtk_rgraph_info : array_of_slv64;
	signal nxtk_color       : array_of_slv64;
	signal nxtk_fw_queue    : array_of_slv64;
	signal nxtk_fw_count    : array_of_slv64;
	signal nxtk_bw_queue    : array_of_slv64;
	signal nxtk_bw_count    : array_of_slv64;
	signal nxtk_scc_results : array_of_slv64;
	
	signal master_tx_vld	: std_logic;
	signal master_tx_nextv	: std_logic_vector(63 downto 0);
	signal k2k_start		: std_logic;
	signal k0_rx_vld		: std_logic;

begin

	-- CyGraph Kernel 0
	k0 : scc_kernel
	port map (
		-- control signals
		clk                 => clk,
		rst                 => r_rst,
		enable				=> kernels_enable,
		busy				=> kernels_busy,
		done				=> kernels_done,
		-- Kernel Parameters
		kernel_id			=> x"00",
		ae_id				=> ae_id,
		kernels_count		=> kernels_count,
		-- kernels communication signals
		kernel_tx_vld       => kernel_tx_vld(0),
		kernel_tx_nextv     => kernel_tx_nextv(0),
		kernel_rx_vld       => k0_rx_vld,
		kernel_rx_nextv     => master_tx_nextv,
		-- Input Graph Prameters (Represented in Custom CSR)
		N                   => n,
		graph_info          => graph_info,
		rgraph_info         => rgraph_info,
		-- SCC intersection parameters
		color               => color,
		fw_queue            => fw_addr,
		fw_count            => fw_count,
		bw_queue            => bw_addr,
		bw_count            => bw_count,
		scc_results         => scc_addr,
		-- Parameters for next kernel
		nxtk_rst            => nxtk_rst(0),
		nxtk_enable         => nxtk_enable(0),
		nextk_busy          => nextk_busy(0),
		nextk_done          => nextk_done(0),
		nxtk_N              => nxtk_N(0),
		nxtk_graph_info     => nxtk_graph_info(0),
		nxtk_rgraph_info    => nxtk_rgraph_info(0),
		nxtk_color          => nxtk_color(0),
		nxtk_fw_queue       => nxtk_fw_queue(0),
		nxtk_fw_count       => nxtk_fw_count(0),
		nxtk_bw_queue       => nxtk_bw_queue(0),
		nxtk_bw_count       => nxtk_bw_count(0),
		nxtk_scc_results    => nxtk_scc_results(0),
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
		mc_rsp_rdctl		=> mc0_rsp_rdctl,
		-- MC flush signals
		mc_req_flush        => mc0_req_flush,
		mc_rsp_flush_cmplt  => mc0_rsp_flush_cmplt
	);

	-- CyGraph Kernel 1
	k1 : scc_kernel
	port map (
		-- control signals
		clk					=> clk,
		rst					=> nxtk_rst(0),
		enable				=> nxtk_enable(0),
		busy				=> nextk_busy(0),
		done				=> nextk_done(0),
		-- Kernel Parameters
		kernel_id			=> x"01",
		ae_id				=> ae_id,
		kernels_count		=> kernels_count,
		-- kernels communication signals
		kernel_tx_vld       => kernel_tx_vld(1),
		kernel_tx_nextv     => kernel_tx_nextv(1),
		kernel_rx_vld       => kernel_tx_vld(0),
		kernel_rx_nextv     => kernel_tx_nextv(0),
		-- Input Graph Prameters (Represented in Custom CSR)
		N                   => nxtk_N(0),
		graph_info          => nxtk_graph_info(0),
		rgraph_info         => nxtk_rgraph_info(0),
		-- SCC intersection parameters
		color               => nxtk_color(0),
		fw_queue            => nxtk_fw_queue(0),
		fw_count            => nxtk_fw_count(0),
		bw_queue            => nxtk_bw_queue(0),
		bw_count            => nxtk_bw_count(0),
		scc_results         => nxtk_scc_results(0),
		-- Parameters for next kernel
		nxtk_rst            => nxtk_rst(1),
		nxtk_enable         => nxtk_enable(1),
		nextk_busy          => nextk_busy(1),
		nextk_done          => nextk_done(1),
		nxtk_N              => nxtk_N(1),
		nxtk_graph_info     => nxtk_graph_info(1),
		nxtk_rgraph_info    => nxtk_rgraph_info(1),
		nxtk_color          => nxtk_color(1),
		nxtk_fw_queue       => nxtk_fw_queue(1),
		nxtk_fw_count       => nxtk_fw_count(1),
		nxtk_bw_queue       => nxtk_bw_queue(1),
		nxtk_bw_count       => nxtk_bw_count(1),
		nxtk_scc_results    => nxtk_scc_results(1),
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
		mc_rsp_rdctl		=> mc1_rsp_rdctl,
		-- MC flush signals
		mc_req_flush        => mc1_req_flush,
		mc_rsp_flush_cmplt  => mc1_rsp_flush_cmplt
	);

	-- CyGraph Kernel 2
	k2 : scc_kernel
	port map (
		-- control signals
		clk					=> clk,
		rst					=> nxtk_rst(1),
		enable				=> nxtk_enable(1),
		busy				=> nextk_busy(1),
		done				=> nextk_done(1),
		-- Kernel Parameters
		kernel_id			=> x"02",
		ae_id				=> ae_id,
		kernels_count		=> kernels_count,
		-- kernels communication signals
		kernel_tx_vld       => kernel_tx_vld(2),
		kernel_tx_nextv     => kernel_tx_nextv(2),
		kernel_rx_vld       => kernel_tx_vld(1),
		kernel_rx_nextv     => kernel_tx_nextv(1),
		-- Input Graph Prameters (Represented in Custom CSR)
		N                   => nxtk_N(1),
		graph_info          => nxtk_graph_info(1),
		rgraph_info         => nxtk_rgraph_info(1),
		-- SCC intersection parameters
		color               => nxtk_color(1),
		fw_queue            => nxtk_fw_queue(1),
		fw_count            => nxtk_fw_count(1),
		bw_queue            => nxtk_bw_queue(1),
		bw_count            => nxtk_bw_count(1),
		scc_results         => nxtk_scc_results(1),
		-- Parameters for next kernel
		nxtk_rst            => nxtk_rst(2),
		nxtk_enable         => nxtk_enable(2),
		nextk_busy          => nextk_busy(2),
		nextk_done          => nextk_done(2),
		nxtk_N              => nxtk_N(2),
		nxtk_graph_info     => nxtk_graph_info(2),
		nxtk_rgraph_info    => nxtk_rgraph_info(2),
		nxtk_color          => nxtk_color(2),
		nxtk_fw_queue       => nxtk_fw_queue(2),
		nxtk_fw_count       => nxtk_fw_count(2),
		nxtk_bw_queue       => nxtk_bw_queue(2),
		nxtk_bw_count       => nxtk_bw_count(2),
		nxtk_scc_results    => nxtk_scc_results(2),
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
		mc_rsp_rdctl		=> mc2_rsp_rdctl,
		-- MC flush signals
		mc_req_flush        => mc2_req_flush,
		mc_rsp_flush_cmplt  => mc2_rsp_flush_cmplt
	);

	-- CyGraph Kernel 3
	k3 : scc_kernel
	port map (
		-- control signals
		clk					=> clk,
		rst					=> nxtk_rst(2),
		enable				=> nxtk_enable(2),
		busy				=> nextk_busy(2),
		done				=> nextk_done(2),
		-- Kernel Parameters
		kernel_id			=> x"03",
		ae_id				=> ae_id,
		kernels_count		=> kernels_count,
		-- kernels communication signals
		kernel_tx_vld       => kernel_tx_vld(3),
		kernel_tx_nextv     => kernel_tx_nextv(3),
		kernel_rx_vld       => kernel_tx_vld(2),
		kernel_rx_nextv     => kernel_tx_nextv(2),
		-- Input Graph Prameters (Represented in Custom CSR)
		N                   => nxtk_N(2),
		graph_info          => nxtk_graph_info(2),
		rgraph_info         => nxtk_rgraph_info(2),
		-- SCC intersection parameters
		color               => nxtk_color(2),
		fw_queue            => nxtk_fw_queue(2),
		fw_count            => nxtk_fw_count(2),
		bw_queue            => nxtk_bw_queue(2),
		bw_count            => nxtk_bw_count(2),
		scc_results         => nxtk_scc_results(2),
		-- Parameters for next kernel
		nxtk_rst            => nxtk_rst(3),
		nxtk_enable         => nxtk_enable(3),
		nextk_busy          => nextk_busy(3),
		nextk_done          => nextk_done(3),
		nxtk_N              => nxtk_N(3),
		nxtk_graph_info     => nxtk_graph_info(3),
		nxtk_rgraph_info    => nxtk_rgraph_info(3),
		nxtk_color          => nxtk_color(3),
		nxtk_fw_queue       => nxtk_fw_queue(3),
		nxtk_fw_count       => nxtk_fw_count(3),
		nxtk_bw_queue       => nxtk_bw_queue(3),
		nxtk_bw_count       => nxtk_bw_count(3),
		nxtk_scc_results    => nxtk_scc_results(3),
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
		mc_rsp_rdctl		=> mc3_rsp_rdctl,
		-- MC flush signals
		mc_req_flush        => mc3_req_flush,
		mc_rsp_flush_cmplt  => mc3_rsp_flush_cmplt
	);

	-- CyGraph Kernel 4
	k4 : scc_kernel
	port map (
		-- control signals
		clk					=> clk,
		rst					=> nxtk_rst(3),
		enable				=> nxtk_enable(3),
		busy				=> nextk_busy(3),
		done				=> nextk_done(3),
		-- Kernel Parameters
		kernel_id			=> x"04",
		ae_id				=> ae_id,
		kernels_count		=> kernels_count,
		-- kernels communication signals
		kernel_tx_vld       => kernel_tx_vld(4),
		kernel_tx_nextv     => kernel_tx_nextv(4),
		kernel_rx_vld       => kernel_tx_vld(3),
		kernel_rx_nextv     => kernel_tx_nextv(3),
		-- Input Graph Prameters (Represented in Custom CSR)
		N                   => nxtk_N(3),
		graph_info          => nxtk_graph_info(3),
		rgraph_info         => nxtk_rgraph_info(3),
		-- SCC intersection parameters
		color               => nxtk_color(3),
		fw_queue            => nxtk_fw_queue(3),
		fw_count            => nxtk_fw_count(3),
		bw_queue            => nxtk_bw_queue(3),
		bw_count            => nxtk_bw_count(3),
		scc_results         => nxtk_scc_results(3),
		-- Parameters for next kernel
		nxtk_rst            => nxtk_rst(4),
		nxtk_enable         => nxtk_enable(4),
		nextk_busy          => nextk_busy(4),
		nextk_done          => nextk_done(4),
		nxtk_N              => nxtk_N(4),
		nxtk_graph_info     => nxtk_graph_info(4),
		nxtk_rgraph_info    => nxtk_rgraph_info(4),
		nxtk_color          => nxtk_color(4),
		nxtk_fw_queue       => nxtk_fw_queue(4),
		nxtk_fw_count       => nxtk_fw_count(4),
		nxtk_bw_queue       => nxtk_bw_queue(4),
		nxtk_bw_count       => nxtk_bw_count(4),
		nxtk_scc_results    => nxtk_scc_results(4),
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
		mc_rsp_rdctl		=> mc4_rsp_rdctl,
		-- MC flush signals
		mc_req_flush        => mc4_req_flush,
		mc_rsp_flush_cmplt  => mc4_rsp_flush_cmplt
	);

	-- CyGraph Kernel 5
	k5 : scc_kernel
	port map (
		-- control signals
		clk					=> clk,
		rst					=> nxtk_rst(4),
		enable				=> nxtk_enable(4),
		busy				=> nextk_busy(4),
		done				=> nextk_done(4),
		-- Kernel Parameters
		kernel_id			=> x"05",
		ae_id				=> ae_id,
		kernels_count		=> kernels_count,
		-- kernels communication signals
		kernel_tx_vld       => kernel_tx_vld(5),
		kernel_tx_nextv     => kernel_tx_nextv(5),
		kernel_rx_vld       => kernel_tx_vld(4),
		kernel_rx_nextv     => kernel_tx_nextv(4),
		-- Input Graph Prameters (Represented in Custom CSR)
		N                   => nxtk_N(4),
		graph_info          => nxtk_graph_info(4),
		rgraph_info         => nxtk_rgraph_info(4),
		-- SCC intersection parameters
		color               => nxtk_color(4),
		fw_queue            => nxtk_fw_queue(4),
		fw_count            => nxtk_fw_count(4),
		bw_queue            => nxtk_bw_queue(4),
		bw_count            => nxtk_bw_count(4),
		scc_results         => nxtk_scc_results(4),
		-- Parameters for next kernel
		nxtk_rst            => nxtk_rst(5),
		nxtk_enable         => nxtk_enable(5),
		nextk_busy          => nextk_busy(5),
		nextk_done          => nextk_done(5),
		nxtk_N              => nxtk_N(5),
		nxtk_graph_info     => nxtk_graph_info(5),
		nxtk_rgraph_info    => nxtk_rgraph_info(5),
		nxtk_color          => nxtk_color(5),
		nxtk_fw_queue       => nxtk_fw_queue(5),
		nxtk_fw_count       => nxtk_fw_count(5),
		nxtk_bw_queue       => nxtk_bw_queue(5),
		nxtk_bw_count       => nxtk_bw_count(5),
		nxtk_scc_results    => nxtk_scc_results(5),
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
		mc_rsp_rdctl		=> mc5_rsp_rdctl,
		-- MC flush signals
		mc_req_flush        => mc5_req_flush,
		mc_rsp_flush_cmplt  => mc5_rsp_flush_cmplt
	);

	-- CyGraph Kernel 6
	k6 : scc_kernel
	port map (
		-- control signals
		clk					=> clk,
		rst					=> nxtk_rst(5),
		enable				=> nxtk_enable(5),
		busy				=> nextk_busy(5),
		done				=> nextk_done(5),
		-- Kernel Parameters
		kernel_id			=> x"06",
		ae_id				=> ae_id,
		kernels_count		=> kernels_count,
		-- kernels communication signals
		kernel_tx_vld       => kernel_tx_vld(6),
		kernel_tx_nextv     => kernel_tx_nextv(6),
		kernel_rx_vld       => kernel_tx_vld(5),
		kernel_rx_nextv     => kernel_tx_nextv(5),
		-- Input Graph Prameters (Represented in Custom CSR)
		N                   => nxtk_N(5),
		graph_info          => nxtk_graph_info(5),
		rgraph_info         => nxtk_rgraph_info(5),
		-- SCC intersection parameters
		color               => nxtk_color(5),
		fw_queue            => nxtk_fw_queue(5),
		fw_count            => nxtk_fw_count(5),
		bw_queue            => nxtk_bw_queue(5),
		bw_count            => nxtk_bw_count(5),
		scc_results         => nxtk_scc_results(5),
		-- Parameters for next kernel
		nxtk_rst            => nxtk_rst(6),
		nxtk_enable         => nxtk_enable(6),
		nextk_busy          => nextk_busy(6),
		nextk_done          => nextk_done(6),
		nxtk_N              => nxtk_N(6),
		nxtk_graph_info     => nxtk_graph_info(6),
		nxtk_rgraph_info    => nxtk_rgraph_info(6),
		nxtk_color          => nxtk_color(6),
		nxtk_fw_queue       => nxtk_fw_queue(6),
		nxtk_fw_count       => nxtk_fw_count(6),
		nxtk_bw_queue       => nxtk_bw_queue(6),
		nxtk_bw_count       => nxtk_bw_count(6),
		nxtk_scc_results    => nxtk_scc_results(6),
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
		mc_rsp_rdctl		=> mc6_rsp_rdctl,
		-- MC flush signals
		mc_req_flush        => mc6_req_flush,
		mc_rsp_flush_cmplt  => mc6_rsp_flush_cmplt
	);

	-- CyGraph Kernel 7
	k7 : scc_kernel
	port map (
		-- control signals
		clk					=> clk,
		rst					=> nxtk_rst(6),
		enable				=> nxtk_enable(6),
		busy				=> nextk_busy(6),
		done				=> nextk_done(6),
		-- Kernel Parameters
		kernel_id			=> x"07",
		ae_id				=> ae_id,
		kernels_count		=> kernels_count,
		-- kernels communication signals
		kernel_tx_vld       => kernel_tx_vld(7),
		kernel_tx_nextv     => kernel_tx_nextv(7),
		kernel_rx_vld       => kernel_tx_vld(6),
		kernel_rx_nextv     => kernel_tx_nextv(6),
		-- Input Graph Prameters (Represented in Custom CSR)
		N                   => nxtk_N(6),
		graph_info          => nxtk_graph_info(6),
		rgraph_info         => nxtk_rgraph_info(6),
		-- SCC intersection parameters
		color               => nxtk_color(6),
		fw_queue            => nxtk_fw_queue(6),
		fw_count            => nxtk_fw_count(6),
		bw_queue            => nxtk_bw_queue(6),
		bw_count            => nxtk_bw_count(6),
		scc_results         => nxtk_scc_results(6),
		-- Parameters for next kernel
		nxtk_rst            => nxtk_rst(7),
		nxtk_enable         => nxtk_enable(7),
		nextk_busy          => nextk_busy(7),
		nextk_done          => nextk_done(7),
		nxtk_N              => nxtk_N(7),
		nxtk_graph_info     => nxtk_graph_info(7),
		nxtk_rgraph_info    => nxtk_rgraph_info(7),
		nxtk_color          => nxtk_color(7),
		nxtk_fw_queue       => nxtk_fw_queue(7),
		nxtk_fw_count       => nxtk_fw_count(7),
		nxtk_bw_queue       => nxtk_bw_queue(7),
		nxtk_bw_count       => nxtk_bw_count(7),
		nxtk_scc_results    => nxtk_scc_results(7),
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
		mc_rsp_rdctl		=> mc7_rsp_rdctl,
		-- MC flush signals
		mc_req_flush        => mc7_req_flush,
		mc_rsp_flush_cmplt  => mc7_rsp_flush_cmplt
	);

	prvae_tx_vld		<= '0';
	prvae_tx_data		<= (others => '0');

	nextk_busy(7)      <= '0';
	nextk_done(7)      <= '1';

	nextk_busy(15)      <= '0';
	nextk_done(15)      <= '1';

	-- Reset unused MC ports
	mc8_req_ld         <= '0';
	mc8_req_st         <= '0';
	mc8_req_size       <= (others => '0');
	mc8_req_vaddr      <= (others => '0');
	mc8_req_wrd_rdctl  <= (others => '0');
	mc8_req_flush      <= '0';
	mc8_rsp_stall      <= '0';
	mc9_req_ld         <= '0';
	mc9_req_st         <= '0';
	mc9_req_size       <= (others => '0');
	mc9_req_vaddr      <= (others => '0');
	mc9_req_wrd_rdctl  <= (others => '0');
	mc9_req_flush      <= '0';
	mc9_rsp_stall      <= '0';
	mc10_req_ld        <= '0';
	mc10_req_st        <= '0';
	mc10_req_size      <= (others => '0');
	mc10_req_vaddr     <= (others => '0');
	mc10_req_wrd_rdctl <= (others => '0');
	mc10_req_flush     <= '0';
	mc10_rsp_stall     <= '0';
	mc11_req_ld        <= '0';
	mc11_req_st        <= '0';
	mc11_req_size      <= (others => '0');
	mc11_req_vaddr     <= (others => '0');
	mc11_req_wrd_rdctl <= (others => '0');
	mc11_req_flush     <= '0';
	mc11_rsp_stall     <= '0';
	mc12_req_ld        <= '0';
	mc12_req_st        <= '0';
	mc12_req_size      <= (others => '0');
	mc12_req_vaddr     <= (others => '0');
	mc12_req_wrd_rdctl <= (others => '0');
	mc12_req_flush     <= '0';
	mc12_rsp_stall     <= '0';
	mc13_req_ld        <= '0';
	mc13_req_st        <= '0';
	mc13_req_size      <= (others => '0');
	mc13_req_vaddr     <= (others => '0');
	mc13_req_wrd_rdctl <= (others => '0');
	mc13_req_flush     <= '0';
	mc13_rsp_stall     <= '0';
	mc14_req_ld        <= '0';
	mc14_req_st        <= '0';
	mc14_req_size      <= (others => '0');
	mc14_req_vaddr     <= (others => '0');
	mc14_req_wrd_rdctl <= (others => '0');
	mc14_req_flush     <= '0';
	mc14_rsp_stall     <= '0';
	mc15_req_ld        <= '0';
	mc15_req_st        <= '0';
	mc15_req_size      <= (others => '0');
	mc15_req_vaddr     <= (others => '0');
	mc15_req_wrd_rdctl <= (others => '0');
	mc15_req_flush     <= '0';
	mc15_rsp_stall     <= '0';

	rst_control : process (clk, rst)
	begin
		if (rising_edge(clk)) then
			if (rst = '1') then
				-- reset data
				r_rst           <= '1';
				r_enable        <= '0';
				n               <= (others => '0');
				color           <= (others => '0');
				scc_addr        <= (others => '0');
				graph_info      <= (others => '0');
				rgraph_info     <= (others => '0');
				fw_addr         <= (others => '0');
				fw_count        <= (others => '0');
				bw_addr         <= (others => '0');
				bw_count        <= (others => '0');
			else
				r_rst           <= '0';
				if (enable = '1') then
					r_enable    <= '1';
					n           <= n_in;
					color       <= color_in;
					scc_addr    <= scc_addr_in;
					graph_info  <= graph_info_in;
					rgraph_info <= rgraph_info_in;
					fw_addr     <= fw_addr_in;
					fw_count    <= fw_count_in;
					bw_addr     <= bw_addr_in;
					bw_count    <= bw_count_in;
				else
					r_enable    <= '0';
				end if;
			end if;
		end if;
	end process;

	ae_ae : process (clk, r_rst)
	begin
		if (rising_edge(clk)) then
			if (r_rst = '1') then
				nxtae_tx_vld		<= '0';
				nxtae_tx_data		<= (others => '0');
				master_tx_nextv		<= (others => '0');
				nextv_out			<= (others => '0');
				k0_rx_vld			<= '0';
			else

				-- Control output
				if (scc_state = st_start) then
					nextv_out		<= (others => '0');
				elsif (kernel_tx_vld(7) = '1') then
					nextv_out		<= x"00000000" & std_logic_vector(kernel_tx_nextv(7)(31 downto 0));
				end if;

				-- Control nxtae_tx_vld, nxtae_tx_data
				if (scc_state = st_start or scc_state = st_done or scc_state = st_idle) then
					nxtae_tx_vld		<= '0';
					nxtae_tx_data		<= (others => '0');
				else
					nxtae_tx_vld		<= kernel_tx_vld(7);
					nxtae_tx_data		<= kernel_tx_nextv(7)(31 downto 0);
				end if;


				-- Control k0_rx_vld, master_tx_nextv
				if (scc_state = st_start) then
					k0_rx_vld			<= '0';
					master_tx_nextv		<= (others => '0');
				else
					if (ae_id = "00") then
						k0_rx_vld		<= master_tx_vld;
						if (prvae_rx_vld = '1') then
							master_tx_nextv	<= x"00000000" & prvae_rx_data(31 downto 0);
						end if;
					elsif (prvae_rx_vld = '1') then
						k0_rx_vld		<= '1';
						master_tx_nextv	<= x"00000000" & prvae_rx_data(31 downto 0);
					else
						k0_rx_vld		<= '0';
					end if;
				end if;

			end if;
		end if;
	end process; -- ae_ae

	master : process(clk, r_rst)
	begin
		if rising_edge(clk) then
			if (r_rst = '1') then
				busy           <= '0';
				done           <= '0';
				scc_state      <= st_idle;
				kernels_enable <= '0';
			else
				case (scc_state) is
					when st_idle =>
						done			<= '0';

						if (r_enable = '1') then
							busy			<= '1';
							kernels_enable	<= '1';					-- set enable early, to allow k2k process in kernel to work
							scc_state	    <= st_start;
						else
							busy			<= '0';
							kernels_enable	<= '0';
							scc_state	    <= st_idle;
						end if ;

					when st_start =>
						if (kernels_busy = '0') then
							kernels_enable	<= '0';
							scc_state 		<= st_wait;
						else
							scc_state	    <= st_start;
						end if;

					when st_wait =>
						kernels_enable		<= '0';
						scc_state 	        <= st_busy;

					when st_busy =>
						if (kernels_busy = '0') then
							scc_state		<= st_done;
						else
							scc_state		<= st_busy;
						end if;

					-- Cygraph is done
					when st_done =>
						done			<= '1';
						busy			<= '0';
						scc_state		<= st_idle;
					when others =>
						scc_state		<= st_idle;
				end case;
			end if; -- end if rst
		end if; -- end if clk
	end process; -- master


	-- Kernel-to-kenrel process
	--- Start and control the kernel_tx_vld signals
	k2k : process (clk, r_rst)
	begin
		if (rising_edge(clk)) then
			if (r_rst = '1') then
				k2k_start		<= '0';
				master_tx_vld	<= '0';
			else
				-- If kernel idle, reset signals
				if (scc_state = st_start) then
					k2k_start		<= '0';
					master_tx_vld	<= '0';
				else
					-- If the start of the level, issue a vld signal
					if (k2k_start = '0') then
						master_tx_vld	<= '0';
						k2k_start		<= '1';
					else
						-- if valid signal, pass it to next kernel in the ring
						if (prvae_rx_vld = '1') then
							master_tx_vld	<= '1';
						else
							master_tx_vld	<= '0';
						end if;
					end if;
				end if;	-- end if kernel state
			end if; -- end if rst
		end if; -- end if clk
	end process; -- Kernel-to-kernel communication

end architecture;
