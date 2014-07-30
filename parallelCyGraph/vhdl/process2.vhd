-- Author: Osama Gamal M. Attia
-- email: ogamal [at] iastate dot edu
-- Description:
-- 		Process 2:
-- 		Read p1 response, get start, end address
--		request neighbors id from graphData

library ieee;
	use ieee.std_logic_1164.all;
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

	signal p2_done_out			: std_logic;
	signal count_1				: unsigned(31 downto 0);
	signal count_2				: unsigned(31 downto 0);
	signal p2_start_index		: unsigned(31 downto 0);
	signal p2_neigh_count		: unsigned(30 downto 0);
	signal busy				: std_logic;
begin

	-- assign count signals
	p2_count_1  <= count_1;
	p2_count_2  <= count_2;

	-- assign p2_done signal
	p2_done     <= p2_done_out;
	--p2_done    <= '1' when started = '1' and p1_done = '1' and busy = '0' and p1_count = count_1 else '0';
	p2_busy		<= busy;

	p2: process(clk, rst)
	begin
		if (rising_edge(clk)) then
			if (rst = '1') then
				p2_state 		<= s0;
				p2_done_out		<= '0';
				busy			<= '0';
				count_1			<= (others => '0');
				count_2			<= (others => '0');
				p2_start_index	<= (others => '0');
				p2_neigh_count	<= (others => '0');
				p1_rsp_q_rd_enb	<= '0';
				p2_req_q_wr_en	<= '0';
				p2_req_q_din	<= (others => '0');
			else
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
							p2_req_q_din				<= (others => '0');
						-- Request a neighbor
						when s1 =>
							-- There at least one neighbor to request
							if (p1_rsp_q_valid = '1' and unsigned(p1_rsp_q_dout(31 downto 1)) > 0) then
								-- p2_req_q is ready, request a neighbor
								if (p2_req_q_almost_full = '0') then
									p2_req_q_wr_en		<= '1';
									p2_req_q_din		<= std_logic_vector(resize(unsigned(graphData) + 4 * unsigned(p1_rsp_q_dout(63 downto 32)), 64));
									count_2				<= count_2 + 1;
									-- There is more neighbors, go to s2
									if (unsigned(p1_rsp_q_dout(31 downto 1)) > 1) then
										p2_start_index	<= unsigned(p1_rsp_q_dout(63 downto 32)) + 1;
										p2_neigh_count	<= unsigned(p1_rsp_q_dout(31 downto 1)) - 1;
										p2_state 		<= s2;
										-- Reset signals
										p1_rsp_q_rd_enb <= '0';
									-- It was just one neighbor
									else
										-- Pop next, keep this state
										if (p1_rsp_q_empty = '0') then
											p1_rsp_q_rd_enb <= '1';
											count_1 		<= count_1 + 1;
											p2_state 		<= s1;
										-- Nothing to pop, go to s0
										else
											p1_rsp_q_rd_enb <= '0';
											p2_state 		<= s0;
										end if;
									end if;
								-- p2_req_q is NOT ready
								else
									-- Save start index and neighbors count, go to s2
									p2_start_index		<= unsigned(p1_rsp_q_dout(63 downto 32));
									p2_neigh_count		<= unsigned(p1_rsp_q_dout(31 downto 1));
									p2_state 			<= s2;
									-- Reset Signals
									p1_rsp_q_rd_enb 	<= '0';
									p2_req_q_wr_en		<= '0';
									p2_req_q_din		<= (others => '0');
								end if;
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
								p2_req_q_wr_en			<= '0';
								p2_req_q_din			<= (others => '0');
							-- Data isn't ready yet, keep waiting in s1
							else
								p2_state 				<= s1;
								-- reset signals
								p1_rsp_q_rd_enb			<= '0';
								p2_req_q_wr_en			<= '0';
								p2_req_q_din			<= (others => '0');
							end if;
						-- Request more neighbors
						when s2 =>
							-- There at least one neighbor to request
							if (p2_neigh_count > 0) then
								-- p2_req_q is ready, request a neighbor
								if (p2_req_q_almost_full = '0') then
									p2_req_q_wr_en		<= '1';
									p2_req_q_din		<= std_logic_vector(resize(unsigned(graphData) + 4 * p2_start_index, 64));
									count_2				<= count_2 + 1;
									p2_start_index	<= p2_start_index + 1;
									p2_neigh_count	<= p2_neigh_count - 1;
									-- There is more neighbors, go to s2
									if (p2_neigh_count > 1) then
										p2_state 		<= s2;
										-- Reset signals
										p1_rsp_q_rd_enb <= '0';
									-- It was just one neighbor
									else
										-- Pop next, keep this state
										if (p1_rsp_q_empty = '0') then
											p1_rsp_q_rd_enb <= '1';
											count_1 		<= count_1 + 1;
											p2_state 		<= s1;
										-- Nothing to pop, go to s0
										else
											p1_rsp_q_rd_enb <= '0';
											p2_state 		<= s0;
										end if;
									end if;
								-- p2_req_q is NOT ready (i.e. full)
								else
									-- Save start index and neighbors count, go to s2
									p2_start_index		<= p2_start_index;
									p2_neigh_count		<= p2_neigh_count;
									p2_state 			<= s2;
									-- Reset Signals
									p1_rsp_q_rd_enb 	<= '0';
									p2_req_q_wr_en		<= '0';
									p2_req_q_din		<= (others => '0');
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
								p2_req_q_din			<= (others => '0');
							end if;
						-- Uknown state
						when others =>
							-- Reset Signals
							p1_rsp_q_rd_enb				<= '0';
							p2_req_q_wr_en				<= '0';
							p2_req_q_din				<= (others => '0');
							p2_state 					<= s0;
					end case;

					if (p1_done = '1' and count_1 >= p1_count and p2_state = s0 and p2_neigh_count = 0 and p1_rsp_q_valid = '0' and p1_rsp_q_empty = '1') then
						p2_done_out <= '1';
					else
						p2_done_out <= '0';
					end if;

					-- if (busy = '1') then
					-- 	-- If only one neighbor, and p2 queue not full
					-- 	if (p2_neigh_count = 1 and p2_req_q_almost_full = '0') then
					-- 		-- request the only neighbor
					-- 		p2_req_q_wr_en	<= '1';
					-- 		p2_req_q_din	<= std_logic_vector(resize(unsigned(graphData) + 4 * p2_start_index, 64));
					-- 		-- wait for next valid
					-- 		busy			<= '0';
					-- 		p2_start_index	<= (others => '0');
					-- 		p2_neigh_count	<= (others => '0');
					-- 		-- Increment counts
					-- 		count_2			<= count_2 + 1;
					-- 	-- If more than one neighbor, and p2 queue is not full
					-- 	elsif (p2_neigh_count > 1 and p2_req_q_almost_full = '0') then
					-- 		-- request the only neighbor
					-- 		p2_req_q_wr_en	<= '1';
					-- 		p2_req_q_din	<= std_logic_vector(resize(unsigned(graphData) + 4 * p2_start_index, 64));
					-- 		busy			<= '1';
					-- 		p2_start_index	<= p2_start_index + 1;
					-- 		p2_neigh_count	<= p2_neigh_count - 1;
					-- 		-- Increment counts
					-- 		count_2			<= count_2 + 1;
					-- 	-- If p2 queue is full and there is neighbors
					-- 	elsif (p2_neigh_count >= 1 and p2_req_q_almost_full = '1') then
					-- 		-- Keep busy
					-- 		busy			<= '1';
					-- 		p2_req_q_wr_en	<= '0';
					-- 		p2_req_q_din	<= (others => '0');
					-- 	-- Else!
					-- 	else
					-- 		busy			<= '0';
					-- 		p2_start_index	<= (others => '0');
					-- 		p2_neigh_count	<= (others => '0');
					-- 		p2_req_q_wr_en	<= '0';
					-- 		p2_req_q_din	<= (others => '0');
					-- 	end if;
					-- elsif (busy = '0' and p1_rsp_q_valid = '1') then
					-- 	-- If only one neighbor, and p2 queue not full
					-- 	if (unsigned(p1_rsp_q_dout(31 downto 1)) = 1 and p2_req_q_almost_full = '0') then
					-- 		-- request the only neighbor
					-- 		p2_req_q_wr_en	<= '1';
					-- 		p2_req_q_din	<= std_logic_vector(resize(unsigned(graphData) + 4 * unsigned(p1_rsp_q_dout(63 downto 32)), 64));
					-- 		-- wait for next valid
					-- 		busy			<= '0';
					-- 		p2_start_index	<= (others => '0');
					-- 		p2_neigh_count	<= (others => '0');
					-- 		-- Increment counts
					-- 		count_2			<= count_2 + 1;
					-- 	-- If more than one neighbor, and p2 queue is not full
					-- 	elsif (unsigned(p1_rsp_q_dout(31 downto 1)) > 1 and p2_req_q_almost_full = '0') then
					-- 		-- request the only neighbor
					-- 		p2_req_q_wr_en	<= '1';
					-- 		p2_req_q_din	<= std_logic_vector(resize(unsigned(graphData) + 4 * unsigned(p1_rsp_q_dout(63 downto 32)), 64));
					-- 		busy			<= '1';
					-- 		p2_start_index	<= unsigned(p1_rsp_q_dout(63 downto 32)) + 1;
					-- 		p2_neigh_count	<= unsigned(p1_rsp_q_dout(31 downto 1)) - 1;
					-- 		-- Increment counts
					-- 		count_2			<= count_2 + 1;
					-- 	-- If p2 queue is full and there is neighbors
					-- 	elsif (unsigned(p1_rsp_q_dout(31 downto 1)) >= 1 and p2_req_q_almost_full = '1') then
					-- 		-- Save start index and neighbors count
					-- 		p2_start_index	<= unsigned(p1_rsp_q_dout(63 downto 32));
					-- 		p2_neigh_count	<= unsigned(p1_rsp_q_dout(31 downto 1));
					-- 		-- Go busy
					-- 		busy			<= '1';
					-- 		p2_req_q_wr_en	<= '0';
					-- 		p2_req_q_din	<= (others => '0');
					-- 	-- Else!
					-- 	else
					-- 		busy			<= '0';
					-- 		p2_start_index	<= (others => '0');
					-- 		p2_neigh_count	<= (others => '0');
					-- 		p2_req_q_wr_en	<= '0';
					-- 		p2_req_q_din	<= (others => '0');
					-- 	end if;
					-- else
					-- 	busy				<= '0';
					-- 	p2_req_q_wr_en		<= '0';
					-- 	p2_req_q_din		<= (others => '0');
					-- 	p2_start_index		<= (others => '0');
					-- 	p2_neigh_count		<= (others => '0');
					-- end if;

					-- -- if not busy, pop
					-- if (p1_rsp_q_empty = '0' and p2_req_q_almost_full = '0' and p1_count > count_1 and p1_rsp_q_rd_en = '0') then
					-- 	if ((busy = '0' and p1_rsp_q_valid = '1' and unsigned(p1_rsp_q_dout(31 downto 1)) <= 1) or (busy = '0' and p1_rsp_q_valid = '0') or (busy = '1' and p2_neigh_count <= 1)) then
					-- 		p1_rsp_q_rd_enb	<= '1';
					-- 	else
					-- 		p1_rsp_q_rd_enb	<= '0';
					-- 	end if;
					-- else
					-- 	p1_rsp_q_rd_enb	<= '0';
					-- end if;

					-- if (p1_rsp_q_valid = '1') then
					-- 	count_1 		<= count_1 + 1;
					-- end if ;

					-- -- Process 2 is done if process 1 is done and p1_count = count_1
					-- if (p1_done = '1' and count_1 >= p1_count and busy = '0' and p2_neigh_count = 0 and p1_rsp_q_valid = '0') then
					-- 	p2_done_out <= '1';
					-- else
					-- 	p2_done_out <= '0';
					-- end if;
				else
					-- reset everything
					p2_state		<= s0;
					p2_done_out		<= '0';
					busy			<= '0';
					count_1			<= (others => '0');
					count_2			<= (others => '0');
					p2_start_index	<= (others => '0');
					p2_neigh_count	<= (others => '0');
					p1_rsp_q_rd_enb	<= '0';
					p2_req_q_wr_en	<= '0';
					p2_req_q_din	<= (others => '0');
				end if; -- end if started
			end if; -- end if rst
		end if; -- end if clk
	end process; -- p2

end architecture; -- arch
