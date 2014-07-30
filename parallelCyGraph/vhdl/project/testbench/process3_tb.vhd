-- Author: Osama Gamal M. Attia
-- email: ogamal [at] iastate dot edu
-- Description:	Process 3 testbench

library ieee;
	use ieee.std_logic_1164.all;
	use ieee.numeric_std.all;

library unisim;
	use unisim.vcomponents.all;

ENTITY process3_tb IS
END process3_tb;
 
ARCHITECTURE behavior OF process3_tb IS 

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

	--Inputs
	signal clk                  : std_logic := '0';
	signal rst                  : std_logic := '0';
	signal started              : std_logic := '0';
	signal graphInfo            : std_logic_vector(63 downto 0) := (others => '0');
	signal p2_done              : std_logic := '0';
	signal p2_count_2           : std_logic_vector(31 downto 0) := (others => '0');
	signal p3_req_q_almost_full : std_logic := '0';
	signal p3_req_q_full        : std_logic := '0';
	signal mc_rsp_push          : std_logic := '0';
	signal mc_rsp_data          : std_logic_vector(63 downto 0) := (others => '0');
	signal mc_rsp_rdctl         : std_logic_vector(31 downto 0) := (others => '0');

	--Outputs
	signal p3_done              : std_logic;
	signal p3_count             : std_logic_vector(31 downto 0);
	signal p3_req_q_wr_en       : std_logic;
	signal p3_req_q_din         : std_logic_vector(63 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
	uut: process3 
	port map (
		-- control signals
		clk                  => clk,
		rst                  => rst,
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

   -- Clock process definitions
   clk_process: process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
