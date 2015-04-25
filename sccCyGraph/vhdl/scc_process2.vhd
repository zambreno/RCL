-- Author:         Osama G. Attia
-- email:          ogamal [at] iastate dot edu
-- Create Date:    16:57:25 06/23/2014 
-- Module Name:    scc_process2 - Behavioral 
-- Description:    Request rInfo[id] and SCC[id]

library ieee;
	use ieee.std_logic_1164.all;
	use ieee.numeric_std.all;

library unisim;
	use unisim.vcomponents.all;

entity scc_process2 is
	port (
		-- control signals
		clk                      : in std_logic;
		rst                      : in std_logic;
		enable                   : in std_logic;
		-- Process 2 information
		p2_done                  : out std_logic;
		p2_count                 : out unsigned(63 downto 0);
		-- Input Graph Pointers (Represented in Custom CSR)
		rgraph_info              : in std_logic_vector(63 downto 0);
		scc_results              : in std_logic_vector(63 downto 0);
		-- Process 2 information
		p1_done                  : in std_logic;
		p1_count                 : in unsigned(63 downto 0);
		-- Process 2 SCC req queue signals
		p2_scc_req_almost_full   : in std_logic;
		p2_scc_req_wr_en         : out std_logic;
		p2_scc_req_din           : out std_logic_vector(63 downto 0);
		-- Process 2 rInfo req queue signals
		p2_rInfo_req_almost_full : in std_logic;
		p2_rInfo_req_wr_en       : out std_logic;
		p2_rInfo_req_din         : out std_logic_vector(63 downto 0);
		-- MC response port signals
		mc_rsp_push              : in std_logic;
		mc_rsp_data              : in std_logic_vector(63 downto 0);
		mc_rsp_rdctl             : in std_logic_vector(31 downto 0)
	);
end scc_process2;

architecture Behavioral of scc_process2 is

	signal count                 : unsigned (63 downto 0);

begin

	p2_count <= count;

	p2 : process (clk, rst)
	begin
		if (rising_edge(clk)) then
			if (rst = '1') then
				p2_done            <= '0';
				count              <= (others => '0');
				p2_scc_req_wr_en   <= '0';
				p2_scc_req_din     <= (others => '0');
				p2_rInfo_req_wr_en <= '0';
				p2_rInfo_req_din   <= (others => '0');
			else
				if (enable = '1') then
					-- Got process 1 response
					if (p2_scc_req_almost_full = '0' and p2_rInfo_req_almost_full = '0' and mc_rsp_push = '1' and mc_rsp_rdctl(7 downto 0) = x"01") then
						-- request scc[ID]
						p2_scc_req_wr_en   <= '1';
						p2_scc_req_din     <= std_logic_vector(resize(8 * unsigned(mc_rsp_data) + unsigned(scc_results), 64));
						-- request rInfo[ID]
						p2_rInfo_req_wr_en <= '1';
						p2_rInfo_req_din   <= std_logic_vector(resize(8 * unsigned(mc_rsp_data) + unsigned(rgraph_info), 64));
						-- increment counter
						count			<= count + 1;
					else
						p2_scc_req_wr_en   <= '0';
						p2_scc_req_din     <= (others => '0');
						p2_rInfo_req_wr_en <= '0';
						p2_rInfo_req_din   <= (others => '0');
					end if;

					-- Process 2 is done if process 1 is done and count = p1_count
					if (p1_done = '1' and count = p1_count) then
						p2_done 		<= '1';
					end if;
				else
					p2_done            <= '0';
					count              <= (others => '0');
					p2_scc_req_wr_en   <= '0';
					p2_scc_req_din     <= (others => '0');
					p2_rInfo_req_wr_en <= '0';
					p2_rInfo_req_din   <= (others => '0');
				end if;	-- end if kernel state
			end if; -- end if rst
		end if; -- end if clk
	end process; -- process 2

end Behavioral;

