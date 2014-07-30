-- Author: Osama Gamal M. Attia
-- email: ogamal [at] iastate dot edu
-- Description:
--		Process 3:
-- 		Read nodes from p2 response queue, request node CSR/Info
--		NOTE: (P2 response queue = P3 request queue + graphInfo)

library ieee;
	use ieee.std_logic_1164.all;
	use ieee.numeric_std.all;

library unisim;
	use unisim.vcomponents.all;

entity process3 is
	port (
		-- control signals
		clk                  : in std_logic;
		rst                  : in std_logic;
		started              : in std_logic;
		-- Process 3 information
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
end entity ; -- process3

architecture arch of process3 is
	signal count : unsigned (31 downto 0);
begin
	p3_count <= count;
	
	p3 : process (clk, rst)
	begin
		if (rising_edge(clk)) then
			if (rst = '1') then
				p3_done			<= '0';
				count			<= (others => '0');
				p3_req_q_wr_en	<= '0';
				p3_req_q_din	<= (others => '0');
			else
				if (started = '1') then
					-- Got process 2 response
					if (p3_req_q_almost_full = '0' and mc_rsp_push = '1' and mc_rsp_rdctl(7 downto 0) = x"02") then
						-- request graphInfo + Neigh ID
						p3_req_q_wr_en	<= '1';
						p3_req_q_din	<= std_logic_vector(resize(8 * unsigned(mc_rsp_data(31 downto 0)) + unsigned(graphInfo), 64));
						count			<= count + 1;
					else
						p3_req_q_wr_en	<= '0';
						p3_req_q_din	<= (others => '0');
					end if;

					-- Process 3 is done if process 2 is done and count = p2_count_2
					if (p2_done = '1' and count = p2_count_2) then
						p3_done 		<= '1';
					end if;
				else
					p3_done				<= '0';
					count				<= (others => '0');
					p3_req_q_wr_en		<= '0';
					p3_req_q_din		<= (others => '0');
				end if;	-- end if kernel state
			end if; -- end if rst
		end if; -- end if clk
	end process; -- process 3

end architecture; -- arch