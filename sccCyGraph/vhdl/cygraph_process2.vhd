-- Author: Osama Gamal M. Attia
-- email: ogamal [at] iastate dot edu
-- Description:
-- 		Process 2:
-- 		Read p1 response, get start, end address
--		request neighbors id from graphData

library ieee;
	use ieee.std_logic_1164.all;
	use ieee.std_logic_misc.all;
	use ieee.numeric_std.all;

library unisim;
	use unisim.vcomponents.all;

entity process2 is
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
end entity ; -- process2

architecture arch of process2 is
	type state_type	is (s0, s1, s2, s3);
	signal p2_state 			: state_type;

	signal done_out				: std_logic;
	signal count_1				: unsigned(31 downto 0);
	signal count_2				: unsigned(31 downto 0);
	signal start_index			: unsigned(31 downto 0);
	signal neigh_count			: unsigned(30 downto 0);
	signal busy					: std_logic;

	signal rd_offset			: unsigned(31 downto 0);
begin

	-- assign count signals
	p2_count_1  <= count_1;
	p2_count_2  <= count_2;

	-- assign p2_done signal
	p2_done     <= done_out;
	--p2_done    <= '1' when started = '1' and p1_done = '1' and busy = '0' and p1_count = count_1 else '0';
	p2_busy		<= busy;

	p2: process(clk, rst)
	begin
		if (rising_edge(clk)) then
			if (rst = '1') then
				p2_state 		<= s0;
				done_out		<= '0';
				busy			<= '0';
				count_1			<= (others => '0');
				count_2			<= (others => '0');
				start_index		<= (others => '0');
				neigh_count		<= (others => '0');
				p1_rsp_q_rd_enb	<= '0';
				p2_req_q_wr_en	<= '0';
				p2_req_q_din	<= (others => '0');
			else
				p2_req_q_din	<= std_logic_vector(resize(unsigned(graphData) + 4 * start_index, 64));
				if (started = '1') then
					case (p2_state) is
						-- Start:
						when s0 =>
							-- If p1_rsp_q NOT empty, pop, go to s1
							if (p1_rsp_q_empty = '0') then
								p1_rsp_q_rd_enb			<= '1';
								count_1 				<= count_1 + 1;
								p2_state 				<= s1;
							-- if p1_rsp_q empty, keep waiting
							else
								p1_rsp_q_rd_enb			<= '0';
								p2_state 				<= s0;
							end if;
							-- Reset Signals
							p2_req_q_wr_en				<= '0';
						-- Request a neighbor
						when s1 =>
							-- There at least one neighbor to request
							if (p1_rsp_q_valid = '1' and or_reduce(p1_rsp_q_dout(31 downto 1)) /= '0') then
								-- Save start index and neighbors count, go to s2
								start_index			<= unsigned(p1_rsp_q_dout(63 downto 32));
								neigh_count			<= unsigned(p1_rsp_q_dout(31 downto 1));
								p2_state 			<= s2;
								-- Reset Signals
								p1_rsp_q_rd_enb 	<= '0';
							-- No neighbors to request
							elsif (p1_rsp_q_valid = '1') then
								if (p1_rsp_q_empty = '0') then
									p1_rsp_q_rd_enb		<= '1';
									count_1 			<= count_1 + 1;
									p2_state 			<= s1;
								else
									p1_rsp_q_rd_enb		<= '0';
									p2_state 			<= s0;
								end if;
							-- Data isn't ready yet, keep waiting in s1
							else
								p2_state 				<= s1;
								-- reset signals
								p1_rsp_q_rd_enb			<= '0';
							end if;
							-- Reset Signals
							p2_req_q_wr_en				<= '0';
						-- Request more neighbors
						when s2 =>
							-- There at least one neighbor to request
							if (neigh_count /= 0) then
								-- p2_req_q is ready, request a neighbor
								if (p2_req_q_almost_full = '0') then
									p2_req_q_wr_en		<= '1';
									count_2				<= count_2 + 1;
									start_index			<= start_index + 1;
									neigh_count			<= neigh_count - 1;
									p2_state 			<= s2;
									-- Reset signals
									p1_rsp_q_rd_enb 	<= '0';
								-- p2_req_q is NOT ready (i.e. full)
								else
									-- Go to s2
									p2_state 			<= s2;
									-- Reset Signals
									p1_rsp_q_rd_enb 	<= '0';
									p2_req_q_wr_en		<= '0';
								end if;
							-- No neighbors to request
							else
								if (p1_rsp_q_empty = '0') then
									p1_rsp_q_rd_enb		<= '1';
									count_1 			<= count_1 + 1;
									p2_state 			<= s1;
								else
									p1_rsp_q_rd_enb		<= '0';
									p2_state 			<= s0;
								end if;
								p2_req_q_wr_en			<= '0';
							end if;
						-- Uknown state
						when others =>
							-- Reset Signals
							p1_rsp_q_rd_enb				<= '0';
							p2_req_q_wr_en				<= '0';
							p2_state 					<= s0;
					end case;

					if (p1_done = '1' and count_1 >= p1_count and p2_state = s0 and neigh_count = 0 and p1_rsp_q_valid = '0' and p1_rsp_q_empty = '1') then
						done_out <= '1';
					else
						done_out <= '0';
					end if;

				else
					-- reset everything
					p2_state		<= s0;
					done_out		<= '0';
					busy			<= '0';
					count_1			<= (others => '0');
					count_2			<= (others => '0');
					start_index		<= (others => '0');
					neigh_count		<= (others => '0');
					p1_rsp_q_rd_enb	<= '0';
					p2_req_q_wr_en	<= '0';
				end if; -- end if started
			end if; -- end if rst
		end if; -- end if clk
	end process; -- p2

end architecture; -- arch
