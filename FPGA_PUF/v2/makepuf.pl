# Author: Aaron Mills
# 
# Purpose: Produce the source code of a PUF with 
# attributes (e.g. internal routing) that are fixed so that if it is
# instantiated many times in an implementation, each are known to have the exact
# same structure.
#
# There are many permutations of routing which are possible, many of which do not
# produce working PUFs. 
#
# Sequence:
#1. print vhdl with selected permutation as sram_puf.vhd
#2. generate ncd file from sram_puf.vhd and puf_control.ucf using puf makefile
#3. Load ncd file into fpga_edline
#4. extract routing details from fpga_edline as text
#5. print out the updated sram_puf.vhd
#6. copy the source file out to the testbench directory
#
use warnings;
use strict;
#use Win32::SerialPort;


#Global constants---

my $DEBUG=0;
#probably need to change this.
my $puf_dst_path="pcores/axi_trng_v1_01_a/hdl/vhdl";
#probably don't want to change this.
my $puf_src_filename="puf_sram.vhd";

#probably don't want to change this.
my $puf_src_header=
"--source code automatically generated.
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
-- attribute keep of i1: signal is \"TRUE\";
-- attribute keep of i2: signal is \"TRUE\";
  attribute route: string;
  attribute rpm_grid: string;
 attribute u_set: string;
 attribute bel: string;
 attribute rloc: string;
 attribute lock_pins: string;
 attribute lock_pins of lut_inst1 : label is \"all\";
 attribute lock_pins of lut_inst2 : label is \"all\";";

sub get_src_header{
	my $dirt=shift;

	return "$puf_src_header
		$dirt
		begin
		--begin dynamically generated portion\n";
}

#probably don't want to change this.
my $puf_src_footer=
"
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


end Behavioral;\n";
			
my $tok_rst ='rstin';
my $tok_i1 = 'i1';
my $tok_i2 = 'i2';
my @group1_toks=([$tok_rst,$tok_i1],[$tok_i1,$tok_rst]);
my @group2_toks=([$tok_rst,$tok_i2],[$tok_i2,$tok_rst]);			
			
	   
#expression: ~rst + i
#The first argument is the pin num of rst
#the second argument is the pin num of i
#
#these can assume values 0 to 5 and 
#must be different.
sub getInitString{
	my $rst_pos=shift;
	my $i_pos=shift;
	if($rst_pos==$i_pos 
		or not($rst_pos>=0 and $rst_pos<=5)
		or not($i_pos>=0 and $i_pos<=5)){
		die "bad indices: rst_pos=$rst_pos, i_pos=$i_pos\n";
	}
	my $bin_str_init="";

	for(my $i=0;$i<64;$i++){
		my $binstr = unpack("B32", pack("N", $i));
		my @binarray = reverse (split(//,$binstr));
		if($DEBUG){
			print "( ";
			for(@binarray){
				print "$_ ";
			}	
			print " )\n";
			print "INIT[$i]=";
		}
		#ise the binary value of the index as 
		#the boolean variable values.
		my $rst_bit=int($binarray[$rst_pos] eq "1");
		my $i_bit=int($binarray[$i_pos] eq "1");
		if($DEBUG){print "~$rst_bit | $i_bit = ";}

		my $r = ((~$rst_bit)&0x1) | $i_bit;
		$bin_str_init=$r.$bin_str_init;
		if($DEBUG){print "$r\n";}

	}

	#print "Hex: 0x";
	#need to generate upper 32 and lower 32 separately!!
	#substr str, offset
	return unpack("H8", pack("B32", substr("0" x 32 . substr($bin_str_init,0,32), -32))). 
	       unpack("H8", pack("B32", substr("0" x 32 . substr($bin_str_init,32,32), -32))); 

	#print "\n";
}

sub build_puf{
	my $h=shift;
	my $i=shift;
	my $g1j=shift;
	my $g1k=shift;
	my $g2j=shift;
	my $g2k=shift;
	# 1. Print VHDL source---
	generate_puf_source($h,$i,$g1j,$g1k,$g2j,$g2k,"");
	#2. build source to produce NCD
	print "==Building PUF....==\n";
	system("make -f makefile.puf clean");
	system("make -f makefile.puf parout.ncd");			
}

sub get_dirt{
	print "==Generating Dirt Constraints....==\n";
	my $fpgaout=`fpga_edline -p puf_dirt.scr parout.ncd`;
	#print $fpgaout;
	if ($fpgaout=~/ERROR/){
		die "Call to fpga_edline failed!!!!\n";
	}
		
	my $inline="";

	if($fpgaout=~/.*NET \"rstin"\s+ROUTE=(\"{.+?}\")/s){	
		my $r = $1;
		$r =~ s/\"\s+\"//g;
		$inline = $inline."attribute route of rstin: signal is $r;\n";
	}

	if($fpgaout=~/.*NET \"i1"\s+ROUTE=(\"{.+?}\")/s){
		my $r = $1;
		$r =~ s/\"\s+\"//g;
		$inline = $inline."attribute route of i1: signal is $r;\n";
	}

	if($fpgaout=~/.*NET \"i2"\s+ROUTE=(\"{.+?}\")/s){
		my $r = $1;
		$r =~ s/\"\s+\"//g;
		$inline = $inline."attribute route of i2: signal is $r;\n";
	}
	my %attr = ();
	my @lines = split /\n/, $fpgaout;
	foreach my $line (@lines) {
		if($line=~/INST \"(.+?)\"\s(\S+)=\"*(\S+?)\"*;/){
		#attribute rloc of RST_DFF : label is "X0Y0";
			my $attr = lc($2);
			my $attr_line = "attribute $attr of $1: label is \"$3\";\n";
			if($attr eq "bel" and not defined $attr{$attr_line}){
				$inline = $inline.$attr_line;
			}
			$attr{$attr_line}=1;
		}
	
	}
				
				
	#print $inline."\n";
	return $inline;
}


sub generate_puf_source{
	my $h=shift;
	my $i=shift;
	my $g1j=shift;
	my $g1k=shift;
	my $g2j=shift;
	my $g2k=shift;
	my $dirt=shift;

	open SRC,">$puf_src_filename" or die "failed to open file!";
	print SRC get_src_header($dirt);
	print SRC "--variant $h-$i-$g1j-$g1k-$g2j-$g2k\n";
	#$pattern_id++;
	print SRC "lut_inst1 : LUT6\ngeneric map(\n";
	print SRC "INIT => X\"".getInitString($g1j,$g1k)."\")\n";
	print SRC "port map (\n";
	print SRC "O => i2,\n";
	for(my $t1=0;$t1<6;$t1++){
		my $comma=($t1==5)?"":",";
		print SRC "\tI$t1 => ";
		if($t1==$g1j){

			print SRC $group1_toks[$h][0]."$comma\n";
		}elsif($t1==$g1k){

			print SRC $group1_toks[$h][1]."$comma\n";
		}else{
			print SRC "\'0\'$comma\n";
		}
	}	
	
	print SRC ");\n\n";
	print SRC "lut_inst2 : LUT6\ngeneric map(\n";
	print SRC "INIT => X\"".getInitString($g2j,$g2k)."\")\n";
	print SRC "port map (\n";
	print SRC "O => i1,\n";
	for(my $t1=0;$t1<6;$t1++){
		my $comma=($t1==5)?"":",";
		print SRC "\tI$t1 => ";
		if($t1==$g2j){

			print SRC $group2_toks[$i][0]."$comma\n";
		}elsif($t1==$g2k){

			print SRC $group2_toks[$i][1]."$comma\n";
		}else{
			print SRC "\'0\'$comma\n";
		}
	}
	print SRC ");\n";
	print SRC $puf_src_footer;
	close SRC ;

}
		


sub runall{
	my $h=shift;
	my $i=shift;
	my $g1j=shift;
	my $g1k=shift;
	my $g2j=shift;
	my $g2k=shift;

	my $dirt="";
	build_puf($h,$i,$g1j,$g1k,$g2j,$g2k);
	$dirt=get_dirt();
	generate_puf_source($h,$i,$g1j,$g1k,$g2j,$g2k,$dirt);
	system("cp $puf_src_filename $puf_dst_path/$puf_src_filename");
}


#========ENTRY POINT HERE===========

runall(1,1,1,5,2,4); #0.01  --compiles and works as PUF





