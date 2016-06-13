This project folder contains the files to produce the FPGA based PUF design described in the IEEE 2012 ICCD conference paper *Design and Evaluation of a FPGA-Based FPGA Physically Unclonable Function* authored by myself, Aaron Mills. This also was the core topic of my MS thesis in 2012.

  * The folder "v1" contains the original design which was based on hard macros. It targeted Xilinx Spartan 3E (or in general Xilinx devices with 4-input LUTs).
  * The folder "v2" contains a revised version where routing is not fixed via hard macro but rather through in-sourcecode constrants. It targeted Xilinx Spartan 6 and Zynq (or in general Xilinx devices with 6-input LUTs).
  * The examples only show how to produce a SINGLE random bit. In order to build a string of random bits, you can produce an array of cells in a GENERATE loop. This generate loop illustrates not only generating the array in a loop, but also uses properties of integer division and modulus division in a sneaky way to explicitly specifying the X-Y location of each PUF cell in the array (e.g. to ensure that they are placed in the same type of Slice as the original template design). Of course, this could also be done by explicit LOC constraints in a separate UCF file, but sometimes having everything in the source code makes things easier to manage.


```vhdl
GEN_ARRAY: for i in 0 to 127 generate 
  constant BLOCK_HEIGHT: integer:= 150;
  constant BLOCK_X_OFFSET: integer:= 40;
  attribute loc: string;
  attribute loc of PUF_BIT_x : label is "SLICE_X" & integer'image(integer (i/BLOCK_HEIGHT)*4+BLOCK_X_OFFSET ) & "Y" & integer'image(integer( (i mod BLOCK_HEIGHT) + (0) )) ;
	
begin
  PUF_BIT_x : component puf_sram
  port map(
  rst => i_rst,
  clk => i_clk,
  en => '1',
  Q1 => puf_output1(i), 
  Q2 => puf_output2(i) 
);
end generate GEN_ARRAY;
```
