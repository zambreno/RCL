----------------------------------------------------------------------------------
-- Company: Iowa State University
-- Engineer: Aaron Mills
-- 
-- Create Date:    19:44:42 09/21/2011 
-- Design Name: 
-- Module Name:    puf_sram - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: a2b3 LUT configuration
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
Library UNISIM;
use UNISIM.vcomponents.all;
entity puf_sram is

port(
rst: in std_logic;
clk: in std_logic;
en: in std_logic;
Q1: out std_logic;
Q2: out std_logic
);

end puf_sram;
architecture Behavioral of puf_sram is
signal i1: std_logic;
signal i2: std_logic;
signal rstin: std_logic;
attribute keep: boolean;

attribute lock_pins: string;
attribute lock_pins of tri1 : label is "all";
attribute lock_pins of tri2 : label is "all";

begin


----A2B3
tri1 : LUT4_D
generic map (
INIT => X"ff33")
port map (
--LO => i2, -- LUT local output
O => i2, -- LUT general output
I0 => '0', -- LUT input
I1 => i1 , -- LUT input
I2 => '0', -- LUT input
I3 => rstin -- LUT input
);

tri2 : LUT4_D
generic map (
INIT => X"ff0f")
port map (
--LO => i1, -- LUT local output
O => i1, -- LUT general output
I0 => '0', -- LUT input
I1 => '0', -- LUT input
I2 => i2, -- LUT input
I3 => rstin -- LUT input
);

RST_DFF : FDCE
generic map (
	INIT => '1') -- Initial value of register ('0' or '1')
port map (
	Q => rstin, -- Data output
	C => clk, -- Clock input
	CE => en, -- Clock enable input
	CLR => '0', -- Asynchronous clear input
	D => rst -- Data input
);


Q1<=i1;
Q2<=i2;

end Behavioral;
