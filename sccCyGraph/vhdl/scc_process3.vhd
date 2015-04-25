-- Author:         Osama G. Attia
-- email:          ogamal [at] iastate dot edu
-- Create Date:    16:57:25 06/23/2014 
-- Module Name:    scc_process3 - Behavioral 
-- Description:    if rInfo[id].visited = 1 and SCC[id] = 0: color the node
--                 else: request node's info[id] to recover it by marking it unvisited

library ieee;
	use ieee.std_logic_1164.all;
	use ieee.numeric_std.all;

library unisim;
	use unisim.vcomponents.all;

entity scc_process3 is
	port (
		-- control signals
		clk                     : in std_logic;
		rst                     : in std_logic;
		enable                  : in std_logic;
		-- Process 3 information
		p3_done                 : out std_logic;
		p3_count                : out unsigned(63 downto 0);
		-- Input Graph Pointers (Represented in Custom CSR)
		graph_info              : in std_logic_vector(63 downto 0);
		scc_results             : in std_logic_vector(63 downto 0);
		-- Process 2 information
		p2_done                 : in std_logic;
		p2_count                : in unsigned(63 downto 0);
		-- Process 3 scc wr queue signals
		p3_scc_addr_almost_full : in std_logic;
		p3_scc_addr_wr_en       : out std_logic;
		p3_scc_addr_din         : out std_logic_vector(63 downto 0);
		-- Process 3 info req queue signals
		p3_info_req_almost_full : in std_logic;
		p3_info_req_wr_en       : out std_logic;
		p3_info_req_din         : out std_logic_vector(63 downto 0);
		-- Process 3 id queue signals
		p3_id_q_almost_full     : in std_logic;
		p3_id_q_wr_en           : out std_logic;
		p3_id_q_din             : out std_logic_vector(63 downto 0);
		-- Process 1 response queue signals
		p1_rsp_q_rd_enb         : out std_logic;
		p1_rsp_q_dout           : in std_logic_vector(63 downto 0);
		p1_rsp_q_valid          : in std_logic;
		p1_rsp_q_empty          : in std_logic;
		-- Process 2 SCC response queue signals
		p2_scc_rsp_rd_enb       : out std_logic;
		p2_scc_rsp_dout         : in std_logic_vector(0 downto 0);
		p2_scc_rsp_valid        : in std_logic;
		p2_scc_rsp_empty        : in std_logic;
		-- Process 2 rInfo response queue signals
		p2_rinfo_rsp_rd_enb     : out std_logic;
		p2_rinfo_rsp_dout       : in std_logic_vector(0 downto 0);
		p2_rinfo_rsp_valid      : in std_logic;
		p2_rinfo_rsp_empty      : in std_logic
	);
end scc_process3;

architecture Behavioral of scc_process3 is
	signal count_1              : unsigned (63 downto 0);
	signal count_2              : unsigned (63 downto 0);

	signal u_idx8               : unsigned (63 downto 0);
	signal u_scc_addr           : unsigned (63 downto 0);
	signal u_graph_info         : unsigned (63 downto 0);

begin

	p3_count            <= count_2;
	u_idx8(63 downto 3) <= unsigned(p1_rsp_q_dout(60 downto 0));
	u_idx8(2 downto 0)  <= (others => '0');
	u_scc_addr          <= unsigned(scc_results);
	u_graph_info        <= unsigned(graph_info);

	-- PLACE HOLDER
	p3 : process (clk, rst)
	begin
		if (rising_edge(clk)) then
			if (rst = '1') then
				p3_done             <= '0';
				count_1             <= (others => '0');
				count_2             <= (others => '0');
				p1_rsp_q_rd_enb     <= '0';
				p2_scc_rsp_rd_enb   <= '0';
				p2_rinfo_rsp_rd_enb <= '0';
				p3_scc_addr_wr_en   <= '0';
				p3_scc_addr_din     <= (others => '0');
				p3_info_req_wr_en   <= '0';
				p3_info_req_din     <= (others => '0');
				p3_id_q_wr_en       <= '0';
				p3_id_q_din         <= (others => '0');
			else
				if (enable = '1') then
					-- Pop from p1, p2 response queues if not empty and if p3 queues aren't full
					if (p3_scc_addr_almost_full = '0' and p3_info_req_almost_full = '0' and p3_id_q_almost_full = '0'
					and p1_rsp_q_empty = '0' and p2_scc_rsp_empty = '0' and p2_rinfo_rsp_empty = '0') then
						p1_rsp_q_rd_enb       <= '1';
						p2_scc_rsp_rd_enb     <= '1';
						p2_rinfo_rsp_rd_enb   <= '1';
					else
						p1_rsp_q_rd_enb       <= '0';
						p2_scc_rsp_rd_enb     <= '0';
						p2_rinfo_rsp_rd_enb   <= '0';
					end if;

					-- Handle popped data
					if (p1_rsp_q_valid = '1' and p2_scc_rsp_valid = '1' and p2_rinfo_rsp_valid = '1') then
						count_1               <= count_1 + 1;
						-- If SCC = 0 and rinfo[0] = 1, push the id to scc_addr
						if (p2_scc_rsp_dout(0) = '0' and p2_rinfo_rsp_dout(0) = '1') then
							-- mark node ID for color
							p3_scc_addr_wr_en <= '1';
							p3_scc_addr_din   <= std_logic_vector(u_idx8 + u_scc_addr);
							p3_info_req_wr_en <= '0';
							p3_info_req_din   <= (others => '0');
							p3_id_q_wr_en     <= '0';
							p3_id_q_din       <= (others => '0');
						-- else, request info[0] and recover it
						elsif (p2_scc_rsp_dout(0) = '0') then
							count_2           <= count_2 + 1;
							p3_scc_addr_wr_en <= '0';
							p3_scc_addr_din   <= (others => '0');
							p3_info_req_wr_en <= '1';
							p3_info_req_din   <= std_logic_vector(u_idx8 + u_graph_info);
							p3_id_q_wr_en     <= '1';
							p3_id_q_din       <= std_logic_vector(u_idx8 + u_graph_info);
						else
							p3_scc_addr_wr_en <= '0';
							p3_scc_addr_din   <= (others => '0');
							p3_info_req_wr_en <= '0';
							p3_info_req_din   <= (others => '0');
							p3_id_q_wr_en     <= '0';
							p3_id_q_din       <= (others => '0');
						end if;
					else
						p3_scc_addr_wr_en     <= '0';
						p3_scc_addr_din       <= (others => '0');
						p3_info_req_wr_en     <= '0';
						p3_info_req_din       <= (others => '0');
						p3_id_q_wr_en         <= '0';
						p3_id_q_din           <= (others => '0');
					end if;

					-- Process 2 is done if process 1 is done and count = p1_count
					if (p2_done = '1' and count_1 = p2_count) then
						p3_done               <= '1';
					end if;
				else
					p3_done                   <= '0';
					count_1                   <= (others => '0');
					count_2                   <= (others => '0');
					p1_rsp_q_rd_enb           <= '0';
					p2_scc_rsp_rd_enb         <= '0';
					p2_rinfo_rsp_rd_enb       <= '0';
					p3_scc_addr_wr_en         <= '0';
					p3_scc_addr_din           <= (others => '0');
					p3_info_req_wr_en         <= '0';
					p3_info_req_din           <= (others => '0');
					p3_id_q_wr_en             <= '0';
					p3_id_q_din               <= (others => '0');
				end if;	-- end if kernel state
			end if; -- end if rst
		end if; -- end if clk
	end process; -- process 2

end Behavioral;

