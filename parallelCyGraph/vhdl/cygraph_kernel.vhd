-- Author: Osama Gamal M. Attia
-- email: ogamal [at] iastate dot edu
-- Description:
-- 		CyGraph Kernel

library ieee;
	use ieee.std_logic_1164.all;
	use ieee.numeric_std.all;


library unisim;
	use unisim.vcomponents.all;

entity cygraph_kernel is
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
end cygraph_kernel;

architecture Behavioral of cygraph_kernel is

	component master is
		port (
			-- control signals
			clk					: in std_logic;
			rst					: in std_logic;
			enable				: in std_logic;
			busy				: out std_logic;
			done				: out std_logic;
			started				: out std_logic;
			-- kernels communication signals
			current_level		: in unsigned(31 downto 0); -- Current Level
			kernel_rx_vld		: in std_logic;
			wr_offset			: in unsigned(31 downto 0);
			wr_reserved_space	: in unsigned(31 downto 0);
			wr_used_space		: out unsigned(31 downto 0);
			-- Queue pointers
			nq_address			: in std_logic_vector(63 downto 0);
			-- MC request port signals
			mc_req_ld			: out std_logic;
			mc_req_st			: out std_logic;
			mc_req_size			: out std_logic_vector(1 downto 0);
			mc_req_vaddr		: out std_logic_vector(47 downto 0);
			mc_req_wrd_rdctl	: out std_logic_vector(63 downto 0);
			mc_rd_rq_stall		: in std_logic;
			mc_wr_rq_stall		: in std_logic;
			-- Process 1 signals
			p1_req_q_rd_enb		: out std_logic;
			p1_req_q_dout		: in std_logic_vector(63 downto 0);
			p1_req_q_valid		: in std_logic;
			p1_req_q_empty		: in std_logic;
			-- Process 2 signals
			p2_req_q_rd_enb		: out std_logic;
			p2_req_q_dout		: in std_logic_vector(63 downto 0);
			p2_req_q_valid		: in std_logic;
			p2_req_q_empty		: in std_logic;
			-- Process 3 signals
			p3_req_q_rd_enb		: out std_logic;
			p3_req_q_dout		: in std_logic_vector(63 downto 0);
			p3_req_q_valid		: in std_logic;
			p3_req_q_empty		: in std_logic;
			-- Process 4 signals
			p4_done				: in std_logic;
			p4_addr_q_rd_enb	: out std_logic;
			p4_addr_q_dout		: in std_logic_vector(63 downto 0);
			p4_addr_q_valid		: in std_logic;
			p4_addr_q_empty		: in std_logic;
			p4_info_q_rd_enb	: out std_logic;
			p4_info_q_dout		: in std_logic_vector(63 downto 0);
			p4_info_q_valid		: in std_logic;
			p4_info_q_empty		: in std_logic
		);
	end component;

	component process1 is
		port (
			-- control signals
			clk						: in std_logic;
			rst						: in std_logic;
			started					: in std_logic;
			-- Kernel Parameters
			kernel_id				: in unsigned(7 downto 0);
			ae_id					: in std_logic_vector(1 downto 0);
			kernels_count			: in unsigned(7 downto 0);
			cq_count				: in unsigned(31 downto 0);
			-- Queue pointers
			cq_address				: in std_logic_vector(63 downto 0);
			-- Process 1 signals
			p1_done					: out std_logic;
			p1_count				: out unsigned(31 downto 0);	
			-- Process 1 req queue signals
			p1_req_q_almost_full	: in std_logic;
			p1_req_q_wr_en			: out std_logic;
			p1_req_q_din			: out std_logic_vector(63 downto 0);
			p1_req_q_full			: in std_logic
		);
	end component;

	component process2
		port (
			-- control signals
			clk						: in std_logic;
			rst						: in std_logic;
			started					: in std_logic;
			-- Process 2 information
			p2_done					: out std_logic;
			p2_busy					: out std_logic;
			p2_count_1				: out unsigned(31 downto 0);
			p2_count_2				: out unsigned(31 downto 0);
			-- Input Graph Pointers (Represented in Custom CSR)
			graphData	            : in std_logic_vector(63 downto 0);
			-- Process 1 information
			p1_done					: in std_logic;
			p1_count				: in unsigned(31 downto 0);
			-- Process 1 response queue signals
			p1_rsp_q_rd_en			: in std_logic;
			p1_rsp_q_rd_enb			: out std_logic;
			p1_rsp_q_dout			: in std_logic_vector(63 downto 0);
			p1_rsp_q_valid			: in std_logic;
			p1_rsp_q_empty			: in std_logic;
			-- Process 2 request queue signals
			p2_req_q_almost_full	: in std_logic;
			p2_req_q_wr_en			: out std_logic;
			p2_req_q_din			: out std_logic_vector(63 downto 0)
		);
	end component;

	component process3
		port (
			-- control signals
			clk                  : in std_logic;
			rst                  : in std_logic;
			started              : in std_logic;
			-- Process 3 signals
			p3_done              : out std_logic;
			p3_count             : out unsigned(31 downto 0);
			-- Input Graph Pointers (Represented in Custom CSR)
			graphInfo            : in std_logic_vector(63 downto 0);
			-- Process 2 information
			p2_done              : in std_logic;
			p2_count_2           : in unsigned(31 downto 0);
			-- Process 3 req queue signals
			p3_req_q_almost_full : in std_logic;
			p3_req_q_wr_en       : out std_logic;
			p3_req_q_din         : out std_logic_vector(63 downto 0);
			p3_req_q_full        : in std_logic;
			-- MC response port signals
			mc_rsp_push          : in std_logic;
			mc_rsp_data          : in std_logic_vector(63 downto 0);
			mc_rsp_rdctl         : in std_logic_vector(31 downto 0)
		);
	end component;

	component fifo_generator_32_512 is
		PORT (
			clk                  : in std_logic;
			rst                  : in std_logic;
			din                  : in std_logic_vector(31 downto 0);
			wr_en                : in std_logic;
			rd_en                : in std_logic;
			dout                 : out std_logic_vector(31 downto 0);
			full                 : out std_logic;
			almost_full          : out std_logic;
			empty                : out std_logic;
			valid                : out std_logic
		);
	end component;
	
	component fifo_generator_64_512 is
		PORT (
			clk                  : in std_logic;
			rst                  : in std_logic;
			din                  : in std_logic_vector(63 downto 0);
			wr_en                : in std_logic;
			rd_en                : in std_logic;
			dout                 : out std_logic_vector(63 downto 0);
			full                 : out std_logic;
			almost_full          : out std_logic;
			empty                : out std_logic;
			valid                : out std_logic
		);
	end component;
	
	-- type addr_array	is array (0 to 7) of std_logic_vector(63 downto 0);

	signal k_rst				: std_logic;
	-- Master process signals
	signal started				: std_logic;
	signal wr_offset			: unsigned(31 downto 0); -- Next queue write offset (get it from previous kernel)
	signal wr_demand_count		: unsigned(31 downto 0); -- Space that kernel needs to reserve to write to next queue
	signal wr_reserved_space	: unsigned(31 downto 0); -- What I already reserved previously 
	signal wr_used_space		: unsigned(31 downto 0); -- What I consumed from the reserved space
	signal out_done				: std_logic;

	-- registers for output
	signal out_kernel_tx_vld	: std_logic;

	-- Process 1 signals
	signal p1_done				: std_logic;
	signal p1_count				: unsigned(31 downto 0);
	signal p1_offset			: unsigned(31 downto 0);
	
	signal p1_req_q_almost_full	: std_logic;
	signal p1_req_q_wr_en		: std_logic;
	signal p1_req_q_rd_enb		: std_logic;
	signal p1_req_q_rd_en		: std_logic;
	signal p1_req_q_din			: std_logic_vector(63 downto 0);
	signal p1_req_q_dout		: std_logic_vector(63 downto 0);
	signal p1_req_q_valid		: std_logic;
	signal p1_req_q_full		: std_logic;
	signal p1_req_q_empty		: std_logic;

	signal p1_rsp_q_almost_full	: std_logic;
	signal p1_rsp_q_wr_en		: std_logic;
	signal p1_rsp_q_rd_enb		: std_logic;
	signal p1_rsp_q_rd_en		: std_logic;
	signal p1_rsp_q_din			: std_logic_vector(63 downto 0);
	signal p1_rsp_q_dout		: std_logic_vector(63 downto 0);
	signal p1_rsp_q_valid		: std_logic;
	signal p1_rsp_q_full		: std_logic;
	signal p1_rsp_q_empty		: std_logic;

	-- Process 2 signals
	signal p2_done				: std_logic;
	signal p2_busy				: std_logic;
	signal p2_count_1			: unsigned(31 downto 0);
	signal p2_count_2			: unsigned(31 downto 0);

	signal p2_req_q_almost_full	: std_logic;
	signal p2_req_q_wr_en		: std_logic;
	signal p2_req_q_rd_enb		: std_logic;
	signal p2_req_q_rd_en		: std_logic;
	signal p2_req_q_din			: std_logic_vector(63 downto 0);
	signal p2_req_q_dout		: std_logic_vector(63 downto 0);
	signal p2_req_q_valid		: std_logic;
	signal p2_req_q_full		: std_logic;
	signal p2_req_q_empty		: std_logic;

	signal p2_rsp_q_almost_full	: std_logic;
	signal p2_rsp_q_wr_en		: std_logic;
	signal p2_rsp_q_rd_enb		: std_logic;
	signal p2_rsp_q_rd_en		: std_logic;
	signal p2_rsp_q_din			: std_logic_vector(31 downto 0);
	signal p2_rsp_q_dout		: std_logic_vector(31 downto 0);
	signal p2_rsp_q_valid		: std_logic;
	signal p2_rsp_q_full		: std_logic;
	signal p2_rsp_q_empty		: std_logic;

	-- Process 3 signals
	signal p3_done				: std_logic;
	signal p3_count				: unsigned(31 downto 0);

	signal p3_req_q_almost_full	: std_logic;
	signal p3_req_q_wr_en		: std_logic;
	signal p3_req_q_rd_enb		: std_logic;
	signal p3_req_q_rd_en		: std_logic;
	signal p3_req_q_din			: std_logic_vector(63 downto 0);
	signal p3_req_q_dout		: std_logic_vector(63 downto 0);
	signal p3_req_q_valid		: std_logic;
	signal p3_req_q_full		: std_logic;
	signal p3_req_q_empty		: std_logic;

	signal p3_rsp_q_almost_full	: std_logic;
	signal p3_rsp_q_wr_en		: std_logic;
	signal p3_rsp_q_rd_enb		: std_logic;
	signal p3_rsp_q_rd_en		: std_logic;
	signal p3_rsp_q_din			: std_logic_vector(63 downto 0);
	signal p3_rsp_q_dout		: std_logic_vector(63 downto 0);
	signal p3_rsp_q_valid		: std_logic;
	signal p3_rsp_q_full		: std_logic;
	signal p3_rsp_q_empty		: std_logic;
	
	-- Process 4 signals
	signal p4_done				: std_logic;
	signal p4_count				: unsigned(31 downto 0);
	signal p4_state				: unsigned(1 downto 0);
	
	signal p4_addr_q_almost_full	: std_logic;
	signal p4_addr_q_wr_en			: std_logic;
	signal p4_addr_q_rd_enb			: std_logic;
	signal p4_addr_q_rd_en			: std_logic;
	signal p4_addr_q_din			: std_logic_vector(63 downto 0);
	signal p4_addr_q_dout			: std_logic_vector(63 downto 0);
	signal p4_addr_q_valid			: std_logic;
	signal p4_addr_q_full			: std_logic;
	signal p4_addr_q_empty			: std_logic;
	
	signal p4_info_q_almost_full	: std_logic;
	signal p4_info_q_wr_en			: std_logic;
	signal p4_info_q_rd_enb			: std_logic;
	signal p4_info_q_rd_en			: std_logic;
	signal p4_info_q_din			: std_logic_vector(63 downto 0);
	signal p4_info_q_dout			: std_logic_vector(63 downto 0);
	signal p4_info_q_valid			: std_logic;
	signal p4_info_q_full			: std_logic;
	signal p4_info_q_empty			: std_logic;

begin

	-- Output signals
	done 			<= out_done;
	kernel_tx_vld	<= out_kernel_tx_vld; -- when out_done = '0' else kernel_rx_vld;

	-- mask rd enable signals with empty signals
	p1_req_q_rd_en	<= p1_req_q_rd_enb and not p1_req_q_empty;
	-- p1_rsp_q_rd_en	<= p1_rsp_q_rd_enb and not p1_rsp_q_empty;
	p1_rsp_q_rd_en	<= p1_rsp_q_rd_enb and not p1_rsp_q_empty and not p2_busy; -- TEST
	-- p2_req_q_rd_en	<= p2_req_q_rd_enb and not p2_req_q_empty and not p2_busy; -- WERID!! WHY I NEED THE BUSY SIGNAL??
	p2_req_q_rd_en	<= p2_req_q_rd_enb and not p2_req_q_empty;
	p2_rsp_q_rd_en	<= p2_rsp_q_rd_enb and not p2_rsp_q_empty and not p3_rsp_q_empty;
	p3_req_q_rd_en	<= p3_req_q_rd_enb and not p3_req_q_empty;
	p3_rsp_q_rd_en	<= p3_rsp_q_rd_enb and not p2_rsp_q_empty and not p3_rsp_q_empty;
	p4_addr_q_rd_en	<= p4_addr_q_rd_enb and not p4_addr_q_empty;
	p4_info_q_rd_en	<= p4_info_q_rd_enb and not p4_info_q_empty;

	p0: master
	port map (
		-- control signals
		clk					=> clk,
		rst					=> k_rst,
		enable				=> enable,
		busy				=> busy,
		done				=> out_done,
		started				=> started,
		-- kernels communication signals
		current_level		=> current_level,
		kernel_rx_vld		=> kernel_rx_vld,
		wr_offset			=> wr_offset,
		wr_reserved_space	=> wr_reserved_space,
		wr_used_space		=> wr_used_space,
		-- Queue pointers
		nq_address			=> nq_address,
		-- MC request port signals
		mc_req_ld			=> mc_req_ld,
		mc_req_st			=> mc_req_st,
		mc_req_size			=> mc_req_size,
		mc_req_vaddr		=> mc_req_vaddr,
		mc_req_wrd_rdctl	=> mc_req_wrd_rdctl,
		mc_rd_rq_stall		=> mc_rd_rq_stall,
		mc_wr_rq_stall		=> mc_wr_rq_stall,
		-- Process 1 signals
		p1_req_q_rd_enb		=> p1_req_q_rd_enb,
		p1_req_q_dout		=> p1_req_q_dout,
		p1_req_q_valid		=> p1_req_q_valid,
		p1_req_q_empty		=> p1_req_q_empty,
		-- Process 2 signals
		p2_req_q_rd_enb		=> p2_req_q_rd_enb,
		p2_req_q_dout		=> p2_req_q_dout,
		p2_req_q_valid		=> p2_req_q_valid,
		p2_req_q_empty		=> p2_req_q_empty,
		-- Process 3 signals
		p3_req_q_rd_enb		=> p3_req_q_rd_enb,
		p3_req_q_dout		=> p3_req_q_dout,
		p3_req_q_valid		=> p3_req_q_valid,
		p3_req_q_empty		=> p3_req_q_empty,
		-- Process 4 signals
		p4_done				=> p4_done,
		p4_addr_q_rd_enb	=> p4_addr_q_rd_enb,
		p4_addr_q_dout		=> p4_addr_q_dout,
		p4_addr_q_valid		=> p4_addr_q_valid,
		p4_addr_q_empty		=> p4_addr_q_empty,
		p4_info_q_rd_enb	=> p4_info_q_rd_enb,
		p4_info_q_dout		=> p4_info_q_dout,
		p4_info_q_valid		=> p4_info_q_valid,
		p4_info_q_empty		=> p4_info_q_empty
	);

	p1: process1
	port map (
		-- control signals
		clk                  =>	clk,
		rst                  =>	k_rst,
		started              =>	started,
		-- Kernel Parameters
		kernel_id            =>	kernel_id,
		ae_id				 => ae_id,
		kernels_count        =>	kernels_count,
		cq_count             =>	cq_count,
		-- Queue pointers
		cq_address           =>	cq_address,
		-- Process 1 signals
		p1_done              =>	p1_done,
		p1_count             =>	p1_count,
		-- Process 1 req queue signals
		p1_req_q_almost_full =>	p1_req_q_almost_full,
		p1_req_q_wr_en       =>	p1_req_q_wr_en,
		p1_req_q_din         =>	p1_req_q_din,
		p1_req_q_full        =>	p1_req_q_full
	);

	p2: process2
	port map (
		-- control signals
		clk                  => clk,
		rst                  => k_rst,
		started              => started,
		-- Process 2 information
		p2_done              => p2_done,
		p2_busy				 => p2_busy,
		p2_count_1           => p2_count_1,
		p2_count_2           => p2_count_2,
		-- Input Graph Pointers (Represented in Custom CSR)
		graphData            => graphData,
		-- Process 1 information
		p1_done              => p1_done,
		p1_count             => p1_count,
		-- Process 1 response queue signals
		p1_rsp_q_rd_en 		 => p1_rsp_q_rd_en,
		p1_rsp_q_rd_enb      => p1_rsp_q_rd_enb,
		p1_rsp_q_dout        => p1_rsp_q_dout,
		p1_rsp_q_valid       => p1_rsp_q_valid,
		p1_rsp_q_empty       => p1_rsp_q_empty,
		-- Process 2 request queue signals
		p2_req_q_almost_full => p2_req_q_almost_full,
		p2_req_q_wr_en       => p2_req_q_wr_en,
		p2_req_q_din         => p2_req_q_din
	);

	p3: process3 
	port map (
		-- control signals
		clk                  => clk,
		rst                  => k_rst,
		started              => started,
		-- Process 3 signals
		p3_done              => p3_done,
		p3_count             => p3_count,
		-- Input Graph Pointers (Represented in Custom CSR)
		graphInfo            => graphInfo,
		-- Process 2 information
		p2_done              => p2_done,
		p2_count_2           => p2_count_2,
		-- Process 3 req queue signals
		p3_req_q_almost_full => p3_req_q_almost_full,
		p3_req_q_wr_en       => p3_req_q_wr_en,
		p3_req_q_din         => p3_req_q_din,
		p3_req_q_full        => p3_req_q_full,
		-- MC response port signals
		mc_rsp_push          => mc_rsp_push,
		mc_rsp_data          => mc_rsp_data,
		mc_rsp_rdctl         => mc_rsp_rdctl
	);

	-- Process 1 request queue
	p1_req_q : fifo_generator_64_512
	port map (
		clk					=> clk,
		rst					=> k_rst,
		almost_full			=> p1_req_q_almost_full,
		wr_en				=> p1_req_q_wr_en,
		rd_en				=> p1_req_q_rd_enb,
		din					=> p1_req_q_din,
		dout				=> p1_req_q_dout,
		full				=> p1_req_q_full,
		empty				=> p1_req_q_empty,
		valid				=> p1_req_q_valid
	);

	-- process 1 respond queue
	p1_rsp_q : fifo_generator_64_512
	port map (
		clk					=> clk,
		rst					=> k_rst,
		almost_full			=> p1_rsp_q_almost_full,
		wr_en				=> p1_rsp_q_wr_en,
		rd_en				=> p1_rsp_q_rd_en,
		din					=> p1_rsp_q_din,
		dout				=> p1_rsp_q_dout,
		full				=> p1_rsp_q_full,
		empty				=> p1_rsp_q_empty,
		valid				=> p1_rsp_q_valid
	);

	-- process 2 request queue
	p2_req_q : fifo_generator_64_512
	port map (
		clk					=> clk,
		rst					=> k_rst,
		almost_full			=> p2_req_q_almost_full,
		wr_en				=> p2_req_q_wr_en,
		rd_en				=> p2_req_q_rd_en,
		din					=> p2_req_q_din,
		dout				=> p2_req_q_dout,
		full				=> p2_req_q_full,
		empty				=> p2_req_q_empty,
		valid				=> p2_req_q_valid
	);

	-- process 2 respond queue
	p2_rsp_q : fifo_generator_32_512
	port map (
		clk					=> clk,
		rst					=> k_rst,
		almost_full			=> p2_rsp_q_almost_full,
		wr_en				=> p2_rsp_q_wr_en,
		rd_en				=> p2_rsp_q_rd_en,
		din					=> p2_rsp_q_din,
		dout				=> p2_rsp_q_dout,
		full				=> p2_rsp_q_full,
		empty				=> p2_rsp_q_empty,
		valid				=> p2_rsp_q_valid
	);

	-- process 3 request queue
	p3_req_q : fifo_generator_64_512
	port map (
		clk					=> clk,
		rst					=> k_rst,
		almost_full			=> p3_req_q_almost_full,
		wr_en				=> p3_req_q_wr_en,
		rd_en				=> p3_req_q_rd_en,
		din					=> p3_req_q_din,
		dout				=> p3_req_q_dout,
		full				=> p3_req_q_full,
		empty				=> p3_req_q_empty,
		valid				=> p3_req_q_valid
	);

	-- process 3 respond queue
	p3_rsp_q : fifo_generator_64_512
	port map (
		clk					=> clk,
		rst					=> k_rst,
		almost_full			=> p3_rsp_q_almost_full,
		wr_en				=> p3_rsp_q_wr_en,
		rd_en				=> p3_rsp_q_rd_en,
		din					=> p3_rsp_q_din,
		dout				=> p3_rsp_q_dout,
		full				=> p3_rsp_q_full,
		empty				=> p3_rsp_q_empty,
		valid				=> p3_rsp_q_valid
	);

	-- process 4 address queue
	p4_addr_q : fifo_generator_64_512
	port map (
		clk					=> clk,
		rst					=> k_rst,
		almost_full			=> p4_addr_q_almost_full,
		wr_en				=> p4_addr_q_wr_en,
		rd_en				=> p4_addr_q_rd_en,
		din					=> p4_addr_q_din,
		dout				=> p4_addr_q_dout,
		full				=> p4_addr_q_full,
		empty				=> p4_addr_q_empty,
		valid				=> p4_addr_q_valid
	);

	-- process 4 information queue (custom csr)
	p4_info_q : fifo_generator_64_512
	port map (
		clk					=> clk,
		rst					=> k_rst,
		almost_full			=> p4_info_q_almost_full,
		wr_en				=> p4_info_q_wr_en,
		rd_en				=> p4_info_q_rd_en,
		din					=> p4_info_q_din,
		dout				=> p4_info_q_dout,
		full				=> p4_info_q_full,
		empty				=> p4_info_q_empty,
		valid				=> p4_info_q_valid
	);


	-- Kernel-to-kenrel process
	-- Get the previous kernel reserved count, reserve yours and send it to the next kernel
	k2k : process (clk, rst, k_rst)
	begin
		if (rising_edge(clk)) then
			k_rst 					<= rst;
			if (k_rst = '1') then
				out_kernel_tx_vld	<= '0';
				kernel_tx_count		<= (others => '0');
				kernel_tx_done		<= '0';
				wr_demand_count		<= (others => '0');
				wr_reserved_space	<= (others => '0');
				wr_offset			<= (others => '0');
			else
				-- If kernel busy
				--- Incrmenet demand count when something is pushed to p4 queues
				--- Wait for valid signal from previous kernel, and reserve space
				--- Send done signal if done
				if (enable = '1') then
					out_kernel_tx_vld	<= '0';
					kernel_tx_count		<= (others => '0');
					kernel_tx_done		<= '0';
					wr_demand_count		<= (others => '0');
					wr_reserved_space	<= (others => '0');
					wr_offset			<= (others => '0');
				else
					-- Inrease demand count whenever new item is pushed to p4 queues
					if (p4_info_q_wr_en = '1') then
						wr_demand_count	<= wr_demand_count + 1;
					end if;
					
					-- if reserved space are consumed, request more		------------------------------------ FIX THAT
					if (wr_used_space = wr_reserved_space and kernel_rx_vld = '1') then
						out_kernel_tx_vld	<= '1';
						kernel_tx_count 	<= kernel_rx_count + wr_demand_count - wr_reserved_space;
						wr_reserved_space 	<= wr_demand_count;
						wr_offset			<= kernel_rx_count;
					-- elsif (wr_used_space < wr_reserved_space and kernel_rx_vld = '1') then
					elsif (kernel_rx_vld = '1') then
						out_kernel_tx_vld	<= '1';
						kernel_tx_count		<= kernel_rx_count;
					else
						out_kernel_tx_vld	<= '0';
					end if;

					-- if previous kernel is done and this kernel is done, assert kernel_tx_done
					if (kernel_rx_done = '1' and out_done = '1') then
						kernel_tx_done 	<= '1';
					else
						kernel_tx_done	<= '0';
					end if;
				end if;	-- end if kernel state


			end if; -- end if rst
		end if; -- end if clk
	end process; -- Kernel-to-kernel communication


	p4 : process (clk, k_rst)
	begin
		if (rising_edge(clk)) then
			if (k_rst = '1') then
				p4_done			<= '0';
				p4_count		<= (others => '0');
				p4_state		<= "00";
				
				p2_rsp_q_rd_enb	<= '0';
				p3_rsp_q_rd_enb	<= '0';
			else
				if (started = '0') then
					p4_done			<= '0';
					p4_count		<= (others => '0');
					p4_state		<= "00";
					-- set queues signals to default
					p2_rsp_q_rd_enb	<= '0';
					p3_rsp_q_rd_enb	<= '0';
					p4_info_q_wr_en	<= '0';
					p4_addr_q_wr_en	<= '0';
					p4_info_q_din	<= (others => '0');
					p4_addr_q_din	<= (others => '0');
				elsif (started = '1') then
					case (p4_state) is
						-- Nothing was popped from queues before
						when "00" =>
							if (p2_rsp_q_empty = '0' and p3_rsp_q_empty = '0' and p4_info_q_almost_full = '0' and p4_addr_q_almost_full = '0') then
								p2_rsp_q_rd_enb	<= '1';
								p3_rsp_q_rd_enb	<= '1';
								p4_count		<= p4_count + 1;
								p4_state		<= "01";
								-- set queues signals to default
								p4_info_q_wr_en	<= '0';
								p4_addr_q_wr_en	<= '0';
								p4_info_q_din	<= (others => '0');
								p4_addr_q_din	<= (others => '0');
							else
								p4_state		<= "00";
								p2_rsp_q_rd_enb	<= '0';
								p3_rsp_q_rd_enb	<= '0';
								p4_info_q_wr_en	<= '0';
								p4_addr_q_wr_en	<= '0';
								p4_info_q_din	<= (others => '0');
								p4_addr_q_din	<= (others => '0');
							end if;
						-- Neighbor info is popped from p3_rsp and p2_rsp
						when "01" =>
							if (p3_rsp_q_valid = '1' and p2_rsp_q_valid = '1') then
								-- if not visited, push address and csr to p4 queue
								if (p3_rsp_q_dout(0) = '0') then
									p4_addr_q_wr_en	<= '1';
									p4_addr_q_din	<= std_logic_vector(resize(8 * unsigned(p2_rsp_q_dout) + unsigned(graphInfo), 64));
									if (unsigned(p3_rsp_q_dout(31 downto 1)) > 0) then
										p4_info_q_wr_en	<= '1';
										p4_info_q_din	<= p3_rsp_q_dout;
									else
										p4_info_q_wr_en <= '0';
										p4_info_q_din	<= (others => '0');
									end if;

								else
									p4_info_q_wr_en	<= '0';
									p4_addr_q_wr_en	<= '0';
									p4_info_q_din	<= (others => '0');
									p4_addr_q_din	<= (others => '0');
								end if;

								-- If there is more, pop them
								if (p2_rsp_q_empty = '0' and p3_rsp_q_empty = '0' and p4_info_q_almost_full = '0' and p4_addr_q_almost_full = '0') then
									p4_state		<= "01";
									p2_rsp_q_rd_enb	<= '1';
									p3_rsp_q_rd_enb	<= '1';
									p4_count		<= p4_count + 1;
								else
									p4_state 		<= "00";
									p2_rsp_q_rd_enb	<= '0';
									p3_rsp_q_rd_enb	<= '0';
								end if;
							-- nothing popped yet, keep waiting
							else
								-- set queues signals to default
								p4_state		<= "01";
								p2_rsp_q_rd_enb	<= '0';
								p3_rsp_q_rd_enb	<= '0';
								p4_info_q_wr_en	<= '0';
								p4_addr_q_wr_en	<= '0';
								p4_info_q_din	<= (others => '0');
								p4_addr_q_din	<= (others => '0');
							end if;
						when others =>
							p4_state		<= "00";
							-- set queues signals to default
							p2_rsp_q_rd_enb	<= '0';
							p3_rsp_q_rd_enb	<= '0';
							p4_info_q_wr_en	<= '0';
							p4_addr_q_wr_en	<= '0';
							p4_info_q_din	<= (others => '0');
							p4_addr_q_din	<= (others => '0');
					end case;

					-- Process 4 is done if process 3 is done and p3_count = p4_count = p2_count_2
					if p3_done = '1' and p4_count >= p2_count_2 and p4_count >= p3_count and p2_rsp_q_empty = '1' and p4_state = "00" then
						p4_done <= '1';
					end if;
				end if;	-- end if kernel state
			end if; -- end if rst
		end if; -- end if clk
	end process; -- process 4

	-- I DON'T NEED THIS PROCESS .. could be distributed among different processes
	-- MC Response decoder process
	mc_rsp_decoder : process(clk, k_rst)
	begin
		if rising_edge(clk) then
			if (k_rst = '1') then
				p1_rsp_q_wr_en	<= '0';
				p1_rsp_q_din	<= (others => '0');
				p2_rsp_q_wr_en	<= '0';
				p2_rsp_q_din	<= (others => '0');
				p3_rsp_q_wr_en	<= '0';
				p3_rsp_q_din	<= (others => '0');

				mc_rsp_stall	<= '0';
			else
				if (started = '0') then
					p1_rsp_q_wr_en	<= '0';
					p1_rsp_q_din	<= (others => '0');
					p2_rsp_q_wr_en	<= '0';
					p2_rsp_q_din	<= (others => '0');
					p3_rsp_q_wr_en	<= '0';
					p3_rsp_q_din	<= (others => '0');
					mc_rsp_stall	<= '0';
				elsif (started = '1') then
					if (mc_rsp_push = '1') then
						-- Get process 1 response
						if (mc_rsp_rdctl(7 downto 0) = x"01") then
							-- push results to p1 response queue
							p1_rsp_q_wr_en	<= '1';
							p1_rsp_q_din	<= mc_rsp_data;
							-- reset others
							p2_rsp_q_wr_en	<= '0';
							p2_rsp_q_din	<= (others => '0');
							p3_rsp_q_wr_en	<= '0';
							p3_rsp_q_din	<= (others => '0');
						-- Get process 2 response
						elsif (mc_rsp_rdctl(7 downto 0) = x"02") then
							-- push results to p2 response queue
							p2_rsp_q_wr_en	<= '1';
							p2_rsp_q_din	<= mc_rsp_data(31 downto 0);
							-- reset others
							p1_rsp_q_wr_en	<= '0';
							p1_rsp_q_din	<= (others => '0');
							p3_rsp_q_wr_en	<= '0';
							p3_rsp_q_din	<= (others => '0');
						-- Get process 3 response
						elsif (mc_rsp_rdctl(7 downto 0) = x"03") then
							-- push results to p3 response queue
							p3_rsp_q_wr_en	<= '1';
							p3_rsp_q_din	<= mc_rsp_data;
							-- reset others
							p1_rsp_q_wr_en	<= '0';
							p1_rsp_q_din	<= (others => '0');
							p2_rsp_q_wr_en	<= '0';
							p2_rsp_q_din	<= (others => '0');
						else
							-- set p1 response qeueue signals to defaults
							p1_rsp_q_wr_en	<= '0';
							p1_rsp_q_din	<= (others => '0');
							-- set p2 response qeueue signals to defaults
							p2_rsp_q_wr_en	<= '0';
							p2_rsp_q_din	<= (others => '0');
							-- set p3 response qeueue signals to defaults
							p3_rsp_q_wr_en	<= '0';
							p3_rsp_q_din	<= (others => '0');
						end if;
					else
						-- set p1 response qeueue signals to defaults
						p1_rsp_q_wr_en	<= '0';
						p1_rsp_q_din	<= (others => '0');
						-- set p2 response qeueue signals to defaults
						p2_rsp_q_wr_en	<= '0';
						p2_rsp_q_din	<= (others => '0');
						-- set p3 response qeueue signals to defaults
						p3_rsp_q_wr_en	<= '0';
						p3_rsp_q_din	<= (others => '0');
					end if;

					-- Control mc_rsp_stall signal
					if (p1_rsp_q_almost_full = '1' or p2_rsp_q_almost_full = '1' or p3_rsp_q_almost_full = '1'
						or p3_req_q_almost_full = '1' or p4_info_q_almost_full = '1' or p4_addr_q_almost_full = '1') then
						mc_rsp_stall	<= '1';
					else
						mc_rsp_stall	<= '0';
					end if;
				end if;	-- end if kernel state
			end if; -- end if rst
		end if; -- end if clk
	end process; -- end process rsp decoder

end Behavioral;
