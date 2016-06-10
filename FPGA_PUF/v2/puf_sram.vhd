--source code automatically generated.
--Aaron Mills
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
 signal t1: std_logic;
 signal t2: std_logic;
 signal rstin: std_logic;
 attribute keep: string;
-- attribute keep of i1: signal is "TRUE";
-- attribute keep of i2: signal is "TRUE";
  attribute route: string;
  attribute rpm_grid: string;
 attribute u_set: string;
 attribute bel: string;
 attribute rloc: string;
 attribute lock_pins: string;
 attribute lock_pins of lut_inst1 : label is "all";
 attribute lock_pins of lut_inst2 : label is "all";
		attribute route of rstin: signal is "{3;1;7z020clg484;3991708!-1;-73430;-208216;S!0;1055;-298!1;502;2450!2;-624;-1808!2;1356;-1360!3;-933;-264;L!4;0;-8!6;-1980;-344!7;-933;-248;L!}";
attribute route of i1: signal is "{3;1;7z020clg484;e7c4056b!-1;-73430;-208096;S!0;0;-8!1;1107;-342!2;1806;1374!3;-1980;-688!4;-933;-296;L!}";
attribute route of i2: signal is "{3;1;7z020clg484;e27cfa0c!-1;-73430;-207992;S!0;1085;-482!1;2906;3098!2;1025;-663!3;-1039;-705!4;-3044;-1200!5;-933;-208;L!}";
attribute bel of lut_inst2: label is "C6LUT";
attribute bel of Q1_DFF: label is "CFF";
attribute bel of lut_inst1: label is "D6LUT";
attribute bel of Q2_DFF: label is "DFF";
attribute bel of RST_DFF: label is "BFF";

		begin
		--begin dynamically generated portion
--variant 1-1-1-5-2-4
lut_inst1 : LUT6
generic map(
INIT => X"ffffffff33333333")
port map (
O => i2,
	I0 => '0',
	I1 => i1,
	I2 => '0',
	I3 => '0',
	I4 => '0',
	I5 => rstin
);

lut_inst2 : LUT6
generic map(
INIT => X"ffff0f0fffff0f0f")
port map (
O => i1,
	I0 => '0',
	I1 => '0',
	I2 => i2,
	I3 => '0',
	I4 => rstin,
	I5 => '0'
);

--end dynamically generated portion
RST_DFF : FDCE
generic map (
INIT => '0') -- Initial value of register (must be '0' for Spartan6)
port map (
Q => rstin, -- Data output
C => clk, -- Clock input
CE => en, -- Clock enable input
CLR => '0', -- Asynchronous clear input
D => rst -- Data input
);
--Q1<=i1;
--Q2<=i2;

Q1_DFF : FDCE
generic map (
INIT => '0') -- Initial value of register (must be '0' for Spartan6)
port map (
Q => Q1, -- Data output
C => clk, -- Clock input
CE => en, -- Clock enable input
CLR => '0', -- Asynchronous clear input
D => i1 -- Data input
);


Q2_DFF : FDCE
generic map (
INIT => '0') -- Initial value of register (must be '0' for Spartan6)
port map (
Q => Q2, -- Data output
C => clk, -- Clock input
CE => en, -- Clock enable input
CLR => '0', -- Asynchronous clear input
D => i2 -- Data input
);


end Behavioral;
