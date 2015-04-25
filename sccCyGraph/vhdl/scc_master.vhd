-- Author:         Osama G. Attia
-- email:          ogamal [at] iastate dot edu
-- Create Date:    16:57:25 06/23/2014 
-- Module Name:    scc_kernel - Behavioral 

library ieee;
	use ieee.std_logic_1164.all;
	use ieee.std_logic_misc.all;
	use ieee.numeric_std.all;

library unisim;
	use unisim.vcomponents.all;

entity scc_master is
	port (
		-- control signals
		clk                      : in std_logic;
		rst                      : in std_logic;
		enable                   : in std_logic;
		-- search                   : in std_logic;
		done                     : out std_logic;
		-- Input Graph Pointers (Represented in Custom CSR)
		graph_info               : in std_logic_vector(63 downto 0);
		-- SCC intersection parameters
		color                    : in std_logic_vector(63 downto 0);
		-- Process 1 signals
		p1_req_q_rd_enb          : out std_logic;
		p1_req_q_dout            : in std_logic_vector(63 downto 0);
		p1_req_q_valid           : in std_logic;
		p1_req_q_empty           : in std_logic;
		p1_rsp_q_wr_en           : out std_logic;
		p1_rsp_q_din             : out std_logic_vector(63 downto 0);
		p1_rsp_q_almost_full     : in std_logic;
		-- Process 2 signals
		p2_scc_req_rd_enb        : out std_logic;
		p2_scc_req_dout          : in std_logic_vector(63 downto 0);
		p2_scc_req_valid         : in std_logic;
		p2_scc_req_empty         : in std_logic;
		p2_scc_req_almost_full   : in std_logic;
		p2_rinfo_req_rd_enb      : out std_logic;
		p2_rinfo_req_dout        : in std_logic_vector(63 downto 0);
		p2_rinfo_req_valid       : in std_logic;
		p2_rinfo_req_empty       : in std_logic;
		p2_rinfo_req_almost_full : in std_logic;
		p2_scc_rsp_wr_en         : out std_logic;
		p2_scc_rsp_din           : out std_logic_vector(0 downto 0);
		p2_scc_rsp_almost_full   : in std_logic;
		p2_rinfo_rsp_wr_en       : out std_logic;
		p2_rinfo_rsp_din         : out std_logic_vector(0 downto 0);
		p2_rinfo_rsp_almost_full : in std_logic;
		-- Process 3 signals
		p3_done                  : in std_logic;
		p3_scc_addr_rd_enb       : out std_logic;
		p3_scc_addr_dout         : in std_logic_vector(63 downto 0);
		p3_scc_addr_valid        : in std_logic;
		p3_scc_addr_empty        : in std_logic;
		p3_info_req_rd_enb       : out std_logic;
		p3_info_req_dout         : in std_logic_vector(63 downto 0);
		p3_info_req_valid        : in std_logic;
		p3_info_req_empty        : in std_logic;
		p3_id_q_rd_enb           : out std_logic;
		p3_id_q_dout             : in std_logic_vector(63 downto 0);
		p3_id_q_valid            : in std_logic;
		p3_id_q_empty            : in std_logic;
		p3_info_rsp_rd_enb       : out std_logic;
		p3_info_rsp_dout         : in std_logic_vector(63 downto 0);
		p3_info_rsp_valid        : in std_logic;
		p3_info_rsp_empty        : in std_logic;
		p3_info_rsp_wr_en        : out std_logic;
		p3_info_rsp_din          : out std_logic_vector(63 downto 0);
		p3_info_rsp_almost_full  : in std_logic;
		-- MC request port signals
		mc_req_ld                : out std_logic;
		mc_req_st                : out std_logic;
		mc_req_size              : out std_logic_vector(1 downto 0);
		mc_req_vaddr             : out std_logic_vector(47 downto 0);
		mc_req_wrd_rdctl         : out std_logic_vector(63 downto 0);
		mc_rd_rq_stall           : in std_logic;
		mc_wr_rq_stall           : in std_logic;
		-- MC response port signals
		mc_rsp_push              : in std_logic;
		mc_rsp_stall             : out std_logic;
		mc_rsp_data              : in std_logic_vector(63 downto 0);
		mc_rsp_rdctl             : in std_logic_vector(31 downto 0)
	);
end scc_master;

architecture Behavioral of scc_master is
	
	type muxstatetype is (mx_start, mx_stall, mx_p1, mx_p2, mx_p3, mx_p4, mx_p5, mx_p6);
	signal mux_state   : muxstatetype;
	signal done_count  : integer range 0 to 3;
	signal saved_state : std_logic_vector(7 downto 0);
	signal saved_addr  : std_logic_vector(63 downto 0);
	signal saved_data  : std_logic_vector(63 downto 0);
	signal count       : unsigned (63 downto 0);
	signal p2_q_alt    : std_logic;
	
	signal p2_scc_rsp_wr_en_temp     : std_logic;
	signal p2_scc_rsp_din_temp       : std_logic_vector(63 downto 0);
	signal p2_rinfo_rsp_wr_en_temp   : std_logic;
	signal p2_rinfo_rsp_din_temp     : std_logic_vector(63 downto 0);

begin

	-- Requests Multiplexer
	-- Read from the processes' request queues with the specific tag
	Master : process(clk, rst)
	begin
		if (rising_edge(clk)) then
			if (rst = '1') then
				done                <= '0';
				done_count          <= 0;
				-- reset master process control signals
				mux_state           <= mx_start;
				saved_state         <= x"00";
				saved_addr          <= (others => '0');
				saved_data          <= (others => '0');				
				-- reset memory controller signals
				mc_req_ld           <= '0';
				mc_req_st           <= '0';
				mc_req_size         <= (others => '0');
				mc_req_vaddr        <= (others => '0');
				mc_req_wrd_rdctl    <= (others => '0');
				-- reset queues read enable signals
				p1_req_q_rd_enb     <= '0';
				p2_scc_req_rd_enb   <= '0';
				p2_rinfo_req_rd_enb <= '0';
				p3_scc_addr_rd_enb  <= '0';
				p3_info_req_rd_enb  <= '0';
				p3_id_q_rd_enb      <= '0';
				p3_info_rsp_rd_enb	<= '0';
				p2_q_alt            <= '0';

			else
				--- MULTIPLEX requests to memory controller
				if (enable = '1') then
					-- is memory controller asserting rd/wr stall?
					if (mc_rd_rq_stall = '1' or mc_wr_rq_stall = '1') then
						-- save addr/data
						if (p1_req_q_valid = '1') then
							-- Read from reach queue at this address
							saved_state	<= x"01";
							saved_addr	<= p1_req_q_dout;
							saved_data	<= (others => '0');
							mux_state	<= mx_stall;
						elsif (p2_scc_req_valid = '1') then
							-- Read from SCC color value at this address
							saved_state	<= x"02";
							saved_addr	<= p2_scc_req_dout;
							saved_data	<= (others => '0');
							mux_state	<= mx_stall;
						elsif (p2_rinfo_req_valid = '1') then
							-- Read rInfo (in CSR)
							saved_state	<= x"03";
							saved_addr	<= p2_rinfo_req_dout;
							saved_data	<= (others => '0');
							mux_state	<= mx_stall;
						elsif (p3_scc_addr_valid = '1') then
							-- Color node
							saved_state	<= x"04";
							saved_addr	<= p3_scc_addr_dout;
							saved_data	<= (others => '0');
							mux_state	<= mx_stall;
						elsif (p3_info_req_valid = '1') then
							-- Read Info (in CSR)
							saved_state	<= x"05";
							saved_addr	<= p3_info_req_dout;
							saved_data	<= (others => '0');
							mux_state	<= mx_stall;
						elsif (p3_id_q_valid = '1' and p3_info_rsp_valid = '1') then
							-- Update Info CSR
							saved_state	<= x"06";
							saved_addr	<= p3_id_q_dout;
							saved_data	<= p3_info_rsp_dout;
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
						p1_req_q_rd_enb     <= '0';
						p2_scc_req_rd_enb   <= '0';
						p2_rinfo_req_rd_enb <= '0';
						p3_scc_addr_rd_enb  <= '0';
						p3_info_req_rd_enb  <= '0';
						p3_id_q_rd_enb      <= '0';
						p3_info_rsp_rd_enb	<= '0';
					-- If not a memory controller rd/wr stall
					elsif (mc_rd_rq_stall = '0' and mc_wr_rq_stall = '0') then
						if (mux_state = mx_stall) then
							-- Issue a request, if comming from a stall
							if (saved_state = x"01") then
								-- Request from reach queue
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
								-- Request SCC[id] Color
								mc_req_ld						<= '1';
								mc_req_st						<= '0';
								mc_req_size						<= "11";
								mc_req_vaddr					<= saved_addr(47 downto 0);
								mc_req_wrd_rdctl (7 downto 0)	<= saved_state;
								-- reset saved state
								saved_state						<= x"00";
								saved_addr						<= (others => '0');
								saved_data						<= (others => '0');
							elsif (saved_state = x"03") then
								-- Request rInfo[id] (CSR of 64-bit)
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
								-- Color node at SCC[id]
								mc_req_ld						<= '0';
								mc_req_st						<= '1';
								mc_req_size						<= "11";
								mc_req_vaddr					<= saved_addr(47 downto 0);
								mc_req_wrd_rdctl				<= color;
								-- reset saved state
								saved_state						<= x"00";
								saved_addr						<= (others => '0');
								saved_data						<= (others => '0');
							elsif (saved_state = x"05") then
								-- Read Info[id] (CSR of 64-bit)
								mc_req_ld						<= '1';
								mc_req_st						<= '0';
								mc_req_size						<= "11";
								mc_req_vaddr					<= saved_addr(47 downto 0);
								mc_req_wrd_rdctl(7 downto 0)	<= saved_state;
								-- reset saved state
								saved_state						<= x"00";
								saved_addr						<= (others => '0');
								saved_data						<= (others => '0');
							elsif (saved_state = x"06") then
								-- Update Info[id] in (CSR)
								mc_req_ld						<= '0';
								mc_req_st						<= '1';
								mc_req_size						<= "11";
								mc_req_vaddr					<= saved_addr(47 downto 0);
								mc_req_wrd_rdctl				<= saved_data(63 downto 1) & '0';
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
							-- Request from reach queue
							mc_req_ld						<= '1';
							mc_req_st						<= '0';
							mc_req_size						<= "11";
							mc_req_vaddr					<= p1_req_q_dout(47 downto 0);
							mc_req_wrd_rdctl (7 downto 0)	<= x"01";
							-- reset saved state
							saved_state						<= x"00";
							saved_addr						<= (others => '0');
							saved_data						<= (others => '0');
						elsif (mux_state = mx_p2 and p2_scc_req_valid = '1') then
							-- Request SCC[id] Color
							mc_req_ld						<= '1';
							mc_req_st						<= '0';
							mc_req_size						<= "11";
							mc_req_vaddr					<= p2_scc_req_dout(47 downto 0);
							mc_req_wrd_rdctl (7 downto 0)	<= x"02";
							-- reset saved state
							saved_state						<= x"00";
							saved_addr						<= (others => '0');
							saved_data						<= (others => '0');
						elsif (mux_state = mx_p3 and p2_rinfo_req_valid = '1') then
							-- Request rInfo[id] (CSR of 64-bit)
							mc_req_ld						<= '1';
							mc_req_st						<= '0';
							mc_req_size						<= "11";
							mc_req_vaddr					<= p2_rinfo_req_dout(47 downto 0);
							mc_req_wrd_rdctl (7 downto 0)	<= x"03";
							-- reset saved state
							saved_state						<= x"00";
							saved_addr						<= (others => '0');
							saved_data						<= (others => '0');
						elsif (mux_state = mx_p4 and p3_scc_addr_valid = '1') then
							-- Color node at SCC[id]
							mc_req_ld						<= '0';
							mc_req_st						<= '1';
							mc_req_size						<= "11";
							mc_req_vaddr					<= p3_scc_addr_dout(47 downto 0);
							mc_req_wrd_rdctl				<= color;
							-- reset saved state
							saved_state						<= x"00";
							saved_addr						<= (others => '0');
							saved_data						<= (others => '0');
						elsif (mux_state = mx_p5 and p3_info_req_valid = '1') then
							-- Read Info[id] (CSR of 64-bit)
							mc_req_ld						<= '1';
							mc_req_st						<= '0';
							mc_req_size						<= "11";
							mc_req_vaddr					<= p3_info_req_dout(47 downto 0);
							mc_req_wrd_rdctl (7 downto 0)	<= x"05";
							-- Save information for next write request
							saved_state						<= x"00";
							saved_addr						<= (others => '0');
							saved_data						<= (others => '0');
						elsif (mux_state = mx_p6 and p3_id_q_valid = '1' and p3_info_rsp_valid = '1') then
							-- Update Info[id] in (CSR) to be unvisited
							mc_req_ld						<= '0';
							mc_req_st						<= '1';
							mc_req_size						<= "11";
							mc_req_vaddr					<= p3_id_q_dout(47 downto 0);
							mc_req_wrd_rdctl				<= p3_info_rsp_dout(63 downto 1) & '0';
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
						if ((mux_state = mx_start) or (mux_state = mx_stall)
								or (mux_state = mx_p1 and p1_req_q_valid = '1')
								or (mux_state = mx_p2 and p2_scc_req_valid = '1')
								or (mux_state = mx_p3 and p2_rinfo_req_valid = '1')
								or (mux_state = mx_p4 and p3_scc_addr_valid = '1')
								or (mux_state = mx_p5 and p3_info_req_valid = '1')
								or (mux_state = mx_p6 and p3_id_q_valid = '1' and p3_info_rsp_valid = '1')) then
							if (p3_id_q_empty = '0' and p3_info_rsp_empty = '0') then
								-- If process 3 info/addr queues are not empty, make a write request
								p1_req_q_rd_enb     <= '0';
								p2_scc_req_rd_enb   <= '0';
								p2_rinfo_req_rd_enb <= '0';
								p3_scc_addr_rd_enb  <= '0';
								p3_info_req_rd_enb  <= '0';
								p3_id_q_rd_enb      <= '1';
								p3_info_rsp_rd_enb	<= '1';
								mux_state			<= mx_p6;
							elsif (p3_scc_addr_empty = '0') then
								-- If process 3 SCC queue isn't empty, make a write request
								p1_req_q_rd_enb     <= '0';
								p2_scc_req_rd_enb   <= '0';
								p2_rinfo_req_rd_enb <= '0';
								p3_scc_addr_rd_enb  <= '1';
								p3_info_req_rd_enb  <= '0';
								p3_id_q_rd_enb      <= '0';
								p3_info_rsp_rd_enb	<= '0';
								mux_state			<= mx_p4;
							elsif (p3_info_req_empty = '0') then
								-- If process 3 info req queue isn't empty, make a read request
								p1_req_q_rd_enb     <= '0';
								p2_scc_req_rd_enb   <= '0';
								p2_rinfo_req_rd_enb <= '0';
								p3_scc_addr_rd_enb  <= '0';
								p3_info_req_rd_enb  <= '1';
								p3_id_q_rd_enb      <= '0';
								p3_info_rsp_rd_enb	<= '0';
								mux_state			<= mx_p5;
							elsif (p2_rinfo_req_empty = '0' and p2_q_alt = '0') then
								-- If process 2 rInfo queue isn't empty, make a read request
								p1_req_q_rd_enb     <= '0';
								p2_scc_req_rd_enb   <= '0';
								p2_rinfo_req_rd_enb <= '1';
								p3_scc_addr_rd_enb  <= '0';
								p3_info_req_rd_enb  <= '0';
								p3_id_q_rd_enb      <= '0';
								p3_info_rsp_rd_enb	<= '0';
								p2_q_alt            <= '1';  -- Next time read from SCC queue
								mux_state			<= mx_p3;
							elsif (p2_scc_req_empty = '0' and p2_q_alt = '1') then
								-- If process 2 SCC queue isn't empty, make a read request
								p1_req_q_rd_enb     <= '0';
								p2_scc_req_rd_enb   <= '1';
								p2_rinfo_req_rd_enb <= '0';
								p3_scc_addr_rd_enb  <= '0';
								p3_info_req_rd_enb  <= '0';
								p3_id_q_rd_enb      <= '0';
								p3_info_rsp_rd_enb	<= '0';
								p2_q_alt            <= '0'; -- Next time read from rInfo queue
								mux_state			<= mx_p2;
							elsif (p1_req_q_empty = '0') then
								-- If process 1 queue isn't empty, make a read request
								p1_req_q_rd_enb     <= '1';
								p2_scc_req_rd_enb   <= '0';
								p2_rinfo_req_rd_enb <= '0';
								p3_scc_addr_rd_enb  <= '0';
								p3_info_req_rd_enb  <= '0';
								p3_id_q_rd_enb      <= '0';
								p3_info_rsp_rd_enb	<= '0';
								mux_state			<= mx_p1;
							else
								-- reset
								p1_req_q_rd_enb     <= '0';
								p2_scc_req_rd_enb   <= '0';
								p2_rinfo_req_rd_enb <= '0';
								p3_scc_addr_rd_enb  <= '0';
								p3_info_req_rd_enb  <= '0';
								p3_id_q_rd_enb      <= '0';
								p3_info_rsp_rd_enb	<= '0';
								mux_state			<= mx_start;
							end if;
						else
							-- Keep mux state
							mux_state			<= mux_state;
							-- reset enable signals
							p1_req_q_rd_enb     <= '0';
							p2_scc_req_rd_enb   <= '0';
							p2_rinfo_req_rd_enb <= '0';
							p3_scc_addr_rd_enb  <= '0';
							p3_info_req_rd_enb  <= '0';
							p3_id_q_rd_enb      <= '0';
							p3_info_rsp_rd_enb	<= '0';
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
						p1_req_q_rd_enb     <= '0';
						p2_scc_req_rd_enb   <= '0';
						p2_rinfo_req_rd_enb <= '0';
						p3_scc_addr_rd_enb  <= '0';
						p3_info_req_rd_enb  <= '0';
						p3_id_q_rd_enb      <= '0';
						p3_info_rsp_rd_enb	<= '0';
					end if; -- end check for rd/wr stall

					-- if all processes are done and queues ar eempty go done
					if (p3_done = '1' and p3_id_q_empty = '1' and p3_info_rsp_empty = '1' and p3_info_req_empty = '1' and p3_scc_addr_empty = '1'
					and p2_rinfo_req_empty = '1' and p2_scc_req_empty = '1' and p1_req_q_empty = '1') then
						if (done_count < 3) then
							done        <= '0';
							done_count  <= done_count + 1;
						elsif (done_count = 3) then
							done        <= '1';
							done_count  <= 0;
						end if;
					else
						done        <= '0';
						done_count	<= 0;
					end if;

				else
					done                <= '0';
					done_count          <= 0;
					-- reset master process control signals
					mux_state           <= mx_start;
					saved_state         <= x"00";
					saved_addr          <= (others => '0');
					saved_data          <= (others => '0');
					-- reset memory controller signals
					mc_req_ld           <= '0';
					mc_req_st           <= '0';
					mc_req_size         <= (others => '0');
					mc_req_vaddr        <= (others => '0');
					mc_req_wrd_rdctl    <= (others => '0');
					-- reset queues read enable signals
					p1_req_q_rd_enb     <= '0';
					p2_scc_req_rd_enb   <= '0';
					p2_rinfo_req_rd_enb <= '0';
					p3_scc_addr_rd_enb  <= '0';
					p3_info_req_rd_enb  <= '0';
					p3_id_q_rd_enb      <= '0';
					p3_info_rsp_rd_enb  <= '0';
				end if; -- end if enable
			end if; -- end if rst
		end if; -- end if clk
	end process; -- Master

	-- MC Response decoder process
	mc_rsp_decoder : process(clk, rst)
	begin
		if rising_edge(clk) then
			if (rst = '1') then
				p1_rsp_q_wr_en          <= '0';
				p1_rsp_q_din            <= (others => '0');
				p2_scc_rsp_wr_en_temp   <= '0';
				p2_scc_rsp_din_temp     <= (others => '0');
				p2_rinfo_rsp_wr_en_temp <= '0';
				p2_rinfo_rsp_din_temp   <= (others => '0');
				p2_scc_rsp_wr_en        <= '0';
				p2_scc_rsp_din          <= (others => '0');
				p2_rinfo_rsp_wr_en      <= '0';
				p2_rinfo_rsp_din        <= (others => '0');
				p3_info_rsp_wr_en       <= '0';
				p3_info_rsp_din         <= (others => '0');
				mc_rsp_stall            <= '0';
			else
				if (enable = '1') then
					if (mc_rsp_push = '1') then
						-- Get process 1 response
						if (mc_rsp_rdctl(7 downto 0) = x"01") then
							-- push results to p1 response queue
							p1_rsp_q_wr_en          <= '1';
							p1_rsp_q_din            <= mc_rsp_data;
							-- reset others
							p2_scc_rsp_wr_en_temp   <= '0';
							p2_scc_rsp_din_temp     <= (others => '0');
							p2_rinfo_rsp_wr_en_temp <= '0';
							p2_rinfo_rsp_din_temp   <= (others => '0');
							p3_info_rsp_wr_en       <= '0';
							p3_info_rsp_din         <= (others => '0');
						-- Get process 2 SCC[id] response
						elsif (mc_rsp_rdctl(7 downto 0) = x"02") then
							-- push results to p2 SCC response queue
							p2_scc_rsp_wr_en_temp   <= '1';
							p2_scc_rsp_din_temp     <= mc_rsp_data;
							-- reset others
							p1_rsp_q_wr_en          <= '0';
							p1_rsp_q_din            <= (others => '0');
							p2_rinfo_rsp_wr_en_temp <= '0';
							p2_rinfo_rsp_din_temp   <= (others => '0');
							p3_info_rsp_wr_en       <= '0';
							p3_info_rsp_din         <= (others => '0');
						-- Get process 2 rInfo[id] response
						elsif (mc_rsp_rdctl(7 downto 0) = x"03") then
							-- push results to p2 rInfo response queue
							p2_rinfo_rsp_wr_en_temp <= '1';
							p2_rinfo_rsp_din_temp   <= mc_rsp_data;
							-- reset others
							p1_rsp_q_wr_en          <= '0';
							p1_rsp_q_din            <= (others => '0');
							p2_scc_rsp_wr_en_temp   <= '0';
							p2_scc_rsp_din_temp     <= (others => '0');
							p3_info_rsp_wr_en       <= '0';
							p3_info_rsp_din         <= (others => '0');
						-- Get process 3 Info[id] response
						elsif (mc_rsp_rdctl(7 downto 0) = x"05") then
							-- push results to p3 Info response queue
							p3_info_rsp_wr_en       <= '1';
							p3_info_rsp_din         <= mc_rsp_data;
							-- reset others
							p1_rsp_q_wr_en          <= '0';
							p1_rsp_q_din            <= (others => '0');
							p2_scc_rsp_wr_en_temp   <= '0';
							p2_scc_rsp_din_temp     <= (others => '0');
							p2_rinfo_rsp_wr_en_temp <= '0';
							p2_rinfo_rsp_din_temp   <= (others => '0');
						else
							p1_rsp_q_wr_en          <= '0';
							p1_rsp_q_din            <= (others => '0');
							p2_scc_rsp_wr_en_temp   <= '0';
							p2_scc_rsp_din_temp     <= (others => '0');
							p2_rinfo_rsp_wr_en_temp <= '0';
							p2_rinfo_rsp_din_temp   <= (others => '0');
							p3_info_rsp_wr_en       <= '0';
							p3_info_rsp_din         <= (others => '0');
						end if;
					else
						p1_rsp_q_wr_en          <= '0';
						p1_rsp_q_din            <= (others => '0');
						p2_scc_rsp_wr_en_temp   <= '0';
						p2_scc_rsp_din_temp     <= (others => '0');
						p2_rinfo_rsp_wr_en_temp <= '0';
						p2_rinfo_rsp_din_temp   <= (others => '0');
						p3_info_rsp_wr_en       <= '0';
						p3_info_rsp_din         <= (others => '0');
					end if;

					-- Control mc_rsp_stall signal
					if (p1_rsp_q_almost_full = '1' or p2_scc_rsp_almost_full = '1' or p2_rinfo_rsp_almost_full = '1'
					or p3_info_rsp_almost_full = '1' or p2_scc_req_almost_full = '1' or p2_rinfo_req_almost_full = '1') then
						mc_rsp_stall	<= '1';
					else
						mc_rsp_stall	<= '0';
					end if;
				-- elsif enable = '0'
				else
					p1_rsp_q_wr_en          <= '0';
					p1_rsp_q_din            <= (others => '0');
					p2_scc_rsp_wr_en_temp   <= '0';
					p2_scc_rsp_din_temp     <= (others => '0');
					p2_rinfo_rsp_wr_en_temp <= '0';
					p2_rinfo_rsp_din_temp   <= (others => '0');
					p3_info_rsp_wr_en       <= '0';
					p3_info_rsp_din         <= (others => '0');
					mc_rsp_stall            <= '0';	
				end if;	-- end if enable

				p2_scc_rsp_wr_en            <= p2_scc_rsp_wr_en_temp;
				p2_scc_rsp_din(0)           <= or_reduce(p2_scc_rsp_din_temp);
				p2_rinfo_rsp_wr_en          <= p2_rinfo_rsp_wr_en_temp;
				p2_rinfo_rsp_din(0)         <= p2_rinfo_rsp_din_temp(0);
			end if; -- end if rst
		end if; -- end if clk
	end process; -- end process rsp decoder

end Behavioral;

