-- Author: Osama Gamal M. Attia
-- email: ogamal [at] iastate dot edu
-- Description:
-- 		Process 1 of the kernel
-- 		Request contents of current queue at address (cq_address + kernel_id + offset)
-- 		NOTE: we can get rid of this process

library ieee;
	use ieee.std_logic_1164.all;
	use ieee.numeric_std.all;

library unisim;
	use unisim.vcomponents.all;

entity process1 is
  port (
	-- control signals
	clk						: in std_logic;
	rst						: in std_logic;
	started					: in std_logic;
	-- Kernel Parameters
	kernel_id				: in unsigned(7 downto 0); -- Kernel ID
	ae_id					: in std_logic_vector(1 downto 0);
	kernels_count			: in unsigned(7 downto 0);
	cq_count				: in unsigned(31 downto 0); -- Number of nodes to visit in the current level
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
end entity; -- end of process 1 entity declarion


architecture arch of process1 is
	signal p1_offset		: unsigned(31 downto 0);
	signal count			: unsigned(31 downto 0);
begin
	p1_count <= count;

	p1 : process(clk, rst)
	begin
		if rising_edge(clk) then
			if (rst = '1') then
				p1_done			<= '0';
				count			<= (others => '0');
				p1_offset		<= (others => '0');
				
				p1_req_q_wr_en	<= '0';
				p1_req_q_din	<= (others => '0');
			else
				if (started = '0') then
					p1_done			<= '0';
					count			<= (others => '0');
					p1_offset		<= (others => '0');
					-- set the p1 request queue signals to default
					p1_req_q_wr_en	<= '0';
					p1_req_q_din	<= (others => '0');
				elsif (started = '1') then
					if (p1_offset + kernel_id + unsigned(ae_id & "0000") < cq_count and p1_req_q_almost_full = '0') then
						-- request current_queue[cq_address + p1_offset + kernel_id]
						p1_req_q_wr_en	<= '1';
						p1_req_q_din	<= std_logic_vector(resize(unsigned(cq_address) + 8 * (unsigned(ae_id & "0000") + unsigned(kernel_id) + unsigned(p1_offset)), 64));
						-- Increment nodes count and read offset
						count			<= count + 1;
						p1_offset		<= p1_offset + kernels_count;
					elsif (p1_offset + kernel_id + unsigned(ae_id & "0000") >= cq_count) then
						p1_req_q_wr_en	<= '0';
						p1_req_q_din	<= (others => '0');
						p1_done			<= '1';
					else
						p1_req_q_wr_en	<= '0';
						p1_req_q_din	<= (others => '0');
					end if;
				else
					p1_req_q_wr_en	<= '0';
					p1_req_q_din	<= (others => '0');
				end if; -- end if kernel state
			end if; -- end if rst
		end if; -- end if clk
	end process; -- process 1

end architecture; -- arch
