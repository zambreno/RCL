-- Author: Osama Gamal M. Attia
-- email: ogamal [at] iastate dot edu
-- Description:
--		Control workflow
-- 		Requests Multiplexer

library ieee;
	use ieee.std_logic_1164.all;
	use ieee.numeric_std.all;

library unisim;
	use unisim.vcomponents.all;

entity master is
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
end entity; -- Master process

architecture arch of master is
	type state_type is (st_idle, st_busy, st_done);
	signal state				: state_type;

	type muxstatetype is (mx_start, mx_stall, mx_p1, mx_p2, mx_p3, mx_p4, mx_p5);
	signal mux_state			: muxstatetype;
	signal mux_green_light		: std_logic;

	signal saved_state			: std_logic_vector(7 downto 0);
	signal saved_addr			: std_logic_vector(63 downto 0);
	signal saved_data			: std_logic_vector(63 downto 0);
	signal used_space			: unsigned(31 downto 0); -- What I consumed from the reserved space
	signal local_offset			: unsigned(31 downto 0);

	signal pause_p4				: std_logic;
	signal done_count			: integer range 0 to 3;

	-- debug signals
	signal p2_req_count_debug	: unsigned(31 downto 0);
begin

	started 		<= '1' when state = st_busy else '0';
	wr_used_space 	<= used_space;

	mux_green_light <= '1' when ((mux_state = mx_start)
								or (mux_state = mx_stall and saved_state /= x"04")
								or (mux_state = mx_stall and saved_state = x"04" and used_space < wr_reserved_space and wr_reserved_space > 0)
								or (mux_state = mx_p1 and p1_req_q_valid = '1')
								or (mux_state = mx_p2 and p2_req_q_valid = '1')
								or (mux_state = mx_p3 and p3_req_q_valid = '1')
								or (mux_state = mx_p4 and p4_info_q_valid = '1' and used_space < wr_reserved_space and wr_reserved_space > 0)
								or (mux_state = mx_p5 and p4_addr_q_valid = '1'))
							else '0';

	-- Requests Multiplexer
	-- Read from the processes' request queues with the specific tag
	Master : process(clk, rst)
	begin
		if (rising_edge(clk)) then
			if (rst = '1') then
				state				<= st_idle;
				busy				<= '0';
				done				<= '0';
				done_count			<= 0;
				-- reset master process control signals
				pause_p4			<= '0';
				mux_state			<= mx_start;
				saved_state			<= x"00";
				saved_addr			<= (others => '0');
				saved_data			<= (others => '0');
				used_space			<= (others => '0');
				local_offset		<= (others => '0');
				-- reset memory controller signals
				mc_req_ld			<= '0';
				mc_req_st			<= '0';
				mc_req_size			<= (others => '0');
				mc_req_vaddr		<= (others => '0');
				mc_req_wrd_rdctl	<= (others => '0');
				-- reset queues read enable signals
				p4_info_q_rd_enb	<= '0';
				p4_addr_q_rd_enb	<= '0';
				p3_req_q_rd_enb		<= '0';
				p2_req_q_rd_enb		<= '0';
				p1_req_q_rd_enb		<= '0';
				-- reset debug signals
				p2_req_count_debug	<= (others => '0');
			else
				-- Kernel go idle
				--- Reset signals
				--- Wait for enable signal
				if (state = st_idle) then
					busy				<= '0';
					done_count			<= 0;
					-- reset master process control signals
					pause_p4			<= '0';
					mux_state			<= mx_start;
					saved_state			<= x"00";
					saved_addr			<= (others => '0');
					saved_data			<= (others => '0');
					used_space			<= (others => '0');
					local_offset		<= (others => '0');
					-- reset memory controller signals
					mc_req_ld			<= '0';
					mc_req_st			<= '0';
					mc_req_size			<= (others => '0');
					mc_req_vaddr		<= (others => '0');
					mc_req_wrd_rdctl	<= (others => '0');
					-- reset queues read enable signals
					p1_req_q_rd_enb		<= '0';
					p2_req_q_rd_enb		<= '0';
					p3_req_q_rd_enb		<= '0';
					p4_addr_q_rd_enb	<= '0';
					p4_info_q_rd_enb	<= '0';
					-- reset debug signals
					p2_req_count_debug	<= (others => '0');
					-- If got enable signal, go busy
					if (enable = '1') then
						busy    	<= '1';
						done		<= '0';
						done_count	<= 0;
						state		<= st_busy;
					else
						busy		<= '0';
						state 		<= st_idle;
					end if ;

				-- Go Busy:
				--- MULTIPLEX requests to memory controller
				--- Set done signal if everything is done
				elsif (state = st_busy) then
					-- is memory controller asserting rd/wr stall?
					if (mc_rd_rq_stall = '1' or mc_wr_rq_stall = '1') then
						-- save addr/data
						if (p1_req_q_valid = '1') then
							saved_state	<= x"01";
							saved_addr	<= p1_req_q_dout;
							saved_data	<= (others => '0');
							mux_state	<= mx_stall;
						elsif (p2_req_q_valid = '1') then
							saved_state	<= x"02";
							saved_addr	<= p2_req_q_dout;
							saved_data	<= (others => '0');
							mux_state	<= mx_stall;
						elsif (p3_req_q_valid = '1') then
							saved_state	<= x"03";
							saved_addr	<= p3_req_q_dout;
							saved_data	<= (others => '0');
							mux_state	<= mx_stall;
						elsif (p4_info_q_valid = '1') then
							-- Push CSR to NQ
							saved_state	<= x"04";
							saved_addr	<= (others => '0');
							saved_data	<= p4_info_q_dout;
							mux_state	<= mx_stall;
						elsif (p4_addr_q_valid = '1') then
							-- Vist node by setting CSR to current level
							saved_state	<= x"05";
							saved_addr	<= p4_addr_q_dout;
							saved_data	<= (others => '0');
							mux_state	<= mx_stall;
						else
							saved_state	<= saved_state;
							saved_addr	<= saved_addr;
							saved_data	<= saved_data;
							mux_state	<= mux_state;
						end if;
						-- reset memory controller signals
						mc_req_ld			<= '0';
						mc_req_st			<= '0';
						mc_req_size			<= (others => '0');
						mc_req_vaddr		<= (others => '0');
						mc_req_wrd_rdctl	<= (others => '0');
						-- reset queues read enable signals
						p1_req_q_rd_enb		<= '0';
						p2_req_q_rd_enb		<= '0';
						p3_req_q_rd_enb		<= '0';
						p4_addr_q_rd_enb	<= '0';
						p4_info_q_rd_enb	<= '0';
					-- If not a memory controller rd/wr stall
					elsif (mc_rd_rq_stall = '0' and mc_wr_rq_stall = '0') then
						if (mux_state = mx_stall) then
							-- Issue a request, if comming from a stall
							if (saved_state = x"01") then
								-- Request from current queue
								mc_req_ld						<= '1';
								mc_req_st						<= '0';
								mc_req_size						<= "11";
								mc_req_vaddr					<= saved_addr(47 downto 0);
								mc_req_wrd_rdctl (7 downto 0)	<= saved_state;
								-- reset saved state
								saved_state						<= x"00";
								saved_addr						<= (others => '0');
								saved_data						<= (others => '0');
							elsif (saved_state = x"02") then
								-- Request neighbors (IDs of 32-bit)
								mc_req_ld						<= '1';
								mc_req_st						<= '0';
								mc_req_size						<= "10";
								mc_req_vaddr					<= saved_addr(47 downto 0);
								mc_req_wrd_rdctl (7 downto 0)	<= saved_state;
								-- reset saved state
								saved_state						<= x"00";
								saved_addr						<= (others => '0');
								saved_data						<= (others => '0');
							elsif (saved_state = x"03") then
								-- Request neighbors informations (CSR of 64-bit)
								mc_req_ld						<= '1';
								mc_req_st						<= '0';
								mc_req_size						<= "11";
								mc_req_vaddr					<= saved_addr(47 downto 0);
								mc_req_wrd_rdctl (7 downto 0)	<= saved_state;
								-- reset saved state
								saved_state						<= x"00";
								saved_addr						<= (others => '0');
								saved_data						<= (others => '0');
							elsif (saved_state = x"04") then
								-- Push CSR to Next Queue
								if (used_space < wr_reserved_space and wr_reserved_space > 0) then
									-- Write node CSR to next queue
									mc_req_ld						<= '0';
									mc_req_st						<= '1';
									mc_req_size						<= "11";
									mc_req_vaddr					<= std_logic_vector(resize(unsigned(nq_address) + (wr_offset + local_offset) * 8, 48));
									mc_req_wrd_rdctl				<= saved_data;
									-- reset saved state
									saved_state						<= x"00";
									saved_addr						<= (others => '0');
									saved_data						<= (others => '0');
								else
									-- Reset MC
									mc_req_ld						<= '0';
									mc_req_st						<= '0';
									-- keep state
									saved_state						<= saved_state;
									saved_addr						<= saved_addr;
									saved_data						<= saved_data;
								end if;
							elsif (saved_state = x"05") then
								-- Visit node by setting CSR (current_level & 1)
								mc_req_ld						<= '0';
								mc_req_st						<= '1';
								mc_req_size						<= "11";
								mc_req_vaddr					<= saved_addr(47 downto 0);
								mc_req_wrd_rdctl				<= x"00000000" & std_logic_vector(current_level(30 downto 0)) & '1';
								-- reset saved state
								saved_state						<= x"00";
								saved_addr						<= (others => '0');
								saved_data						<= (others => '0');
							else
								-- reset memory controller signals
								mc_req_ld						<= '0';
								mc_req_st						<= '0';
								mc_req_size						<= (others => '0');
								mc_req_vaddr					<= (others => '0');
								mc_req_wrd_rdctl				<= (others => '0');
								-- reset saved state
								saved_state						<= x"00";
								saved_addr						<= (others => '0');
								saved_data						<= (others => '0');
							end if;
						elsif (mux_state = mx_p1 and p1_req_q_valid = '1') then
							-- TODO: fix that to replace the whole code of process 1
							-- Request from current queue
							mc_req_ld						<= '1';
							mc_req_st						<= '0';
							mc_req_size						<= "11";
							mc_req_vaddr					<= p1_req_q_dout(47 downto 0);
							mc_req_wrd_rdctl (7 downto 0)	<= x"01";
							-- reset saved state
							saved_state						<= x"00";
							saved_addr						<= (others => '0');
							saved_data						<= (others => '0');
						elsif (mux_state = mx_p2 and p2_req_q_valid = '1') then
							-- Request neighbors (IDs of 32-bit)
							mc_req_ld						<= '1';
							mc_req_st						<= '0';
							mc_req_size						<= "10";
							mc_req_vaddr					<= p2_req_q_dout(47 downto 0);
							mc_req_wrd_rdctl (7 downto 0)	<= x"02";
							-- reset saved state
							saved_state						<= x"00";
							saved_addr						<= (others => '0');
							saved_data						<= (others => '0');
						elsif (mux_state = mx_p3 and p3_req_q_valid = '1') then
							-- Request neighbors informations (CSR of 64-bit)
							mc_req_ld						<= '1';
							mc_req_st						<= '0';
							mc_req_size						<= "11";
							mc_req_vaddr					<= p3_req_q_dout(47 downto 0);
							mc_req_wrd_rdctl (7 downto 0)	<= x"03";
							-- reset saved state
							saved_state						<= x"00";
							saved_addr						<= (others => '0');
							saved_data						<= (others => '0');
						elsif (mux_state = mx_p4 and p4_info_q_valid = '1') then
							if (used_space < wr_reserved_space and wr_reserved_space > 0) then
								-- Write node CSR to next queue
								mc_req_ld						<= '0';
								mc_req_st						<= '1';
								mc_req_size						<= "11";
								mc_req_vaddr					<= std_logic_vector(resize(unsigned(nq_address) + (wr_offset + local_offset) * 8, 48));
								mc_req_wrd_rdctl				<= p4_info_q_dout;
								-- reset saved state
								saved_state						<= x"00";
								saved_addr						<= (others => '0');
								saved_data						<= (others => '0');
							else
								-- Reset MC
								mc_req_ld						<= '0';
								mc_req_st						<= '0';
								-- keep state
								saved_state						<= x"04";
								saved_addr						<= (others => '0');
								saved_data						<= p4_info_q_dout;
							end if;
						elsif (mux_state = mx_p5 and p4_addr_q_valid = '1') then
							-- Write new CSR (current_level & 1)
							mc_req_ld						<= '0';
							mc_req_st						<= '1';
							mc_req_size						<= "11";
							mc_req_vaddr					<= p4_addr_q_dout(47 downto 0);
							mc_req_wrd_rdctl				<= x"00000000" & std_logic_vector(current_level(30 downto 0)) & '1';
							-- Save information for next write request
							saved_state						<= x"00";
							saved_addr						<= (others => '0');
							saved_data						<= (others => '0');
						else
							-- reset memory controller signals
							mc_req_ld						<= '0';
							mc_req_st						<= '0';
							mc_req_size						<= (others => '0');
							mc_req_vaddr					<= (others => '0');
							mc_req_wrd_rdctl				<= (others => '0');
							-- reset saved state	
							saved_state						<= x"00";
							saved_addr						<= (others => '0');
							saved_data						<= (others => '0');
						end if; -- End mux states execution

						-- Pop from queue if mux is ready
						if ((mux_state = mx_start)
								or (mux_state = mx_stall and saved_state /= x"04")
								or (mux_state = mx_stall and saved_state = x"04" and used_space < wr_reserved_space and wr_reserved_space > 0)
								or (mux_state = mx_p1 and p1_req_q_valid = '1')
								or (mux_state = mx_p2 and p2_req_q_valid = '1')
								or (mux_state = mx_p3 and p3_req_q_valid = '1')
								or (mux_state = mx_p4 and p4_info_q_valid = '1' and used_space < wr_reserved_space and wr_reserved_space > 0)
								or (mux_state = mx_p5 and p4_addr_q_valid = '1')) then
						-- if (mux_green_light = '1') then
							if (p4_addr_q_empty = '0') then
								-- If process 4 addr queue is not empty, make a write request
								p4_addr_q_rd_enb	<= '1';
								p4_info_q_rd_enb	<= '0';
								p3_req_q_rd_enb		<= '0';
								p2_req_q_rd_enb		<= '0';
								p1_req_q_rd_enb		<= '0';
								mux_state			<= mx_p5;
							elsif (p4_info_q_empty = '0' and wr_reserved_space > 0 and used_space < wr_reserved_space) then
								-- If process 4 info queue is not empty, make a write request
								p4_addr_q_rd_enb	<= '0';
								p4_info_q_rd_enb	<= '1';
								p3_req_q_rd_enb		<= '0';
								p2_req_q_rd_enb		<= '0';
								p1_req_q_rd_enb		<= '0';
								mux_state			<= mx_p4;
							elsif (p3_req_q_empty = '0') then
								-- If process 3 queue isn't empty, make a read request
								p4_addr_q_rd_enb	<= '0';
								p4_info_q_rd_enb	<= '0';
								p3_req_q_rd_enb		<= '1';
								p2_req_q_rd_enb		<= '0';
								p1_req_q_rd_enb		<= '0';
								mux_state			<= mx_p3;
							elsif (p2_req_q_empty = '0') then
								-- If process 2 queue isn't empty, make a read request
								p4_addr_q_rd_enb	<= '0';
								p4_info_q_rd_enb	<= '0';
								p3_req_q_rd_enb		<= '0';
								p2_req_q_rd_enb		<= '1';
								p1_req_q_rd_enb		<= '0';
								mux_state			<= mx_p2;
							elsif (p1_req_q_empty = '0') then					-- TODO: fix that to replace the whole code of process 1
								-- If process 1 queue isn't empty, make a read request
								p4_addr_q_rd_enb	<= '0';
								p4_info_q_rd_enb	<= '0';
								p3_req_q_rd_enb		<= '0';
								p2_req_q_rd_enb		<= '0';
								p1_req_q_rd_enb		<= '1';
								mux_state			<= mx_p1;
							else
								-- reset
								p4_addr_q_rd_enb	<= '0';
								p4_info_q_rd_enb	<= '0';
								p3_req_q_rd_enb		<= '0';
								p2_req_q_rd_enb		<= '0';
								p1_req_q_rd_enb		<= '0';
								mux_state			<= mx_start;
							end if;
						else
							if (mux_state = mx_p4 and (used_space >= wr_reserved_space or wr_reserved_space = 0)) then
								mux_state 		<= mx_stall;
							else
								mux_state		<= mux_state;
							end if;
							-- reset
							p4_addr_q_rd_enb	<= '0';
							p4_info_q_rd_enb	<= '0';
							p3_req_q_rd_enb		<= '0';
							p2_req_q_rd_enb		<= '0';
							p1_req_q_rd_enb		<= '0';
						end if; -- end if mux green light!

					else
						-- weird case, memory controller not ready yet
						mux_state			<= mux_state;
						saved_state			<= x"00";
						saved_addr			<= (others => '0');
						saved_data			<= (others => '0');
						-- reset memory controller signals
						mc_req_ld			<= '0';
						mc_req_st			<= '0';
						mc_req_size			<= (others => '0');
						mc_req_vaddr		<= (others => '0');
						mc_req_wrd_rdctl	<= (others => '0');
						-- reset queues read enable signals
						p1_req_q_rd_enb		<= '0';
						p2_req_q_rd_enb		<= '0';
						p3_req_q_rd_enb		<= '0';
						p4_addr_q_rd_enb	<= '0';
						p4_info_q_rd_enb	<= '0';
						-- reset debug signals
						p2_req_count_debug	<= (others => '0');
					end if; -- end check for rd/wr stall

					-- Update the used space count ---------------------------------------- CHECK THIS LOGIC HERE
					if (used_space >= wr_reserved_space and kernel_rx_vld = '1') then
						local_offset	<= (others => '0');
					elsif (mc_rd_rq_stall = '0' and mc_wr_rq_stall = '0' and used_space < wr_reserved_space and wr_reserved_space > 0
						and ((mux_state = mx_stall and saved_state = x"04") or (mux_state = mx_p4 and p4_info_q_valid = '1'))) then
							used_space 		<= used_space + 1;
							local_offset	<= local_offset + 1;
					end if;

					----- TODO #####
					-- if all processes are done and queues ar eempty go done
					if (p4_done = '1' and p4_addr_q_empty = '1' and p4_info_q_empty = '1' and p1_req_q_empty = '1'
					and p2_req_q_empty = '1' and p3_req_q_empty = '1' and done_count < 3) then
						state		<= st_busy;
						done_count	<= done_count + 1;
					elsif (p4_done = '1' and p4_addr_q_empty = '1' and p4_info_q_empty = '1' and p1_req_q_empty = '1'
					and p2_req_q_empty = '1' and p3_req_q_empty = '1' and done_count = 3) then
						state		<= st_done;
						done_count	<= 0;
					else
						state		<= st_busy;
						done_count	<= 0;
					end if;

					if (p2_req_q_valid = '1') then
						p2_req_count_debug <= p2_req_count_debug + 1;
					end if;

				-- Kernel is done with its part of the level
				elsif (state = st_done) then
					-- set done signal one and go idle
					state				<= st_idle;
					busy				<= '0';
					done				<= '1';
					done_count			<= 0;
					-- reset saved state	
					pause_p4			<= '0';
					mux_state			<= mx_start;
					saved_state			<= x"00";
					saved_addr			<= (others => '0');
					saved_data			<= (others => '0');
					used_space			<= (others => '0');
					local_offset		<= (others => '0');
					-- reset memory controller signals
					mc_req_ld			<= '0';
					mc_req_st			<= '0';
					mc_req_size			<= (others => '0');
					mc_req_vaddr		<= (others => '0');
					mc_req_wrd_rdctl	<= (others => '0');
					-- reset queues read enable signals
					p4_info_q_rd_enb	<= '0';
					p4_addr_q_rd_enb	<= '0';
					p3_req_q_rd_enb		<= '0';
					p2_req_q_rd_enb		<= '0';
					p1_req_q_rd_enb		<= '0';
					-- reset debug signals
					p2_req_count_debug	<= (others => '0');
				else
					state 				<= st_idle;
				end if; -- end if state
			end if; -- end if rst
		end if; -- end if clk
	end process; -- Master

end architecture ; -- arch