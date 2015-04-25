-- Author:         Osama G. Attia
-- email:          ogamal [at] iastate dot edu
-- Create Date:    16:57:25 06/23/2014 
-- Module Name:    scc_kernel - Behavioral 
-- Description:    Read from the reachability queue

library ieee;
	use ieee.std_logic_1164.all;
	use ieee.numeric_std.all;

library unisim;
	use unisim.vcomponents.all;


entity scc_process1 is
	port (
		-- control signals
		clk                  : in std_logic;
		rst                  : in std_logic;
		enable               : in std_logic;
		-- Kernel Parameters
		kernel_id            : in unsigned(7 downto 0); -- Kernel ID
		ae_id                : in std_logic_vector(1 downto 0); -- Application Engine ID
		kernels_count        : in unsigned(7 downto 0);
		-- Queue pointers
		reach_count          : in std_logic_vector(63 downto 0); -- Number of nodes in reachability queue
		reach_queue          : in std_logic_vector(63 downto 0); -- Reach queue pointer (could be FW or BW reach queue)
		-- Process 1 signals
		p1_done              : out std_logic;
		-- p1_count             : out unsigned(63 downto 0);	
		-- Process 1 req queue signals
		p1_req_q_almost_full : in std_logic;
		p1_req_q_wr_en       : out std_logic;
		p1_req_q_din         : out std_logic_vector(63 downto 0)
	);
end scc_process1;

architecture Behavioral of scc_process1 is
	signal p1_offset		: unsigned(63 downto 0);
	-- signal count			: unsigned(63 downto 0);

	-- Helping signals
	signal ae_id_x16        : unsigned(5 downto 0);
	signal u_reach_queue    : unsigned(63 downto 0);
	signal u_reach_count    : unsigned(63 downto 0);
	signal read_pointer     : unsigned(63 downto 0);
	signal read_pointer_x8  : unsigned(63 downto 0);
begin

	-- p1_count        <= count;
	ae_id_x16       <= unsigned("0" & ae_id & "000");  --------this is for 32 kernels, make this ae_id & "0000" for 64 kernels
	u_reach_queue   <= unsigned(reach_queue);
	u_reach_count   <= unsigned(reach_count);
	read_pointer    <= p1_offset + kernel_id + ae_id_x16;
	read_pointer_x8 <= read_pointer(60 downto 0) & "000";

	p1 : process(clk, rst)
	begin
		if rising_edge(clk) then
			if (rst = '1') then
				p1_done			<= '0';
				-- count			<= (others => '0');
				p1_offset		<= (others => '0');
				
				p1_req_q_wr_en	<= '0';
				p1_req_q_din	<= (others => '0');
			else
				if (enable = '1') then
					if (read_pointer < u_reach_count and p1_req_q_almost_full = '0') then
						-- request reach_queue[p1_offset + kernel_id + ae_id]
						p1_req_q_wr_en	<= '1';
						p1_req_q_din	<= std_logic_vector(resize(u_reach_queue + read_pointer_x8, 64));
						-- Increment nodes count and read offset
						-- count			<= count + 1;
						p1_offset		<= p1_offset + kernels_count;
					else
						p1_req_q_wr_en	<= '0';
						p1_req_q_din	<= (others => '0');

						if (p1_req_q_almost_full = '0') then
							p1_done		<= '1';
						end if;
					end if;
				else
					p1_done			<= '0';
					-- count			<= (others => '0');
					p1_offset		<= (others => '0');
					-- set the p1 request queue signals to default
					p1_req_q_wr_en	<= '0';
					p1_req_q_din	<= (others => '0');
				end if; -- end if kernel state
			end if; -- end if rst
		end if; -- end if clk
	end process; -- process 1

end Behavioral;

