Included in this directory is the VHDL PUF design (.vhd file) and an example hard macro (.nmc file) which was generated from it using FPGA editor. This is is the design discussed in my 2012 ICCD paper *Design and Evaluation of a FPGA-Based FPGA Physically Unclonable Function*.

The hard macro nmc file can be examined in FPGA Editor. For this original version of the FPGA PUF, the nmc file is included in the testbench project--NOT the vhd file, which merely exists to produce the macro file.

A few notes: 
  * For this design I selected a pair of pins for reset which minimized skew (just a dozen picosec or so). This is why they were kept the same for each configuration in the paper. 
  * The LUT pin configuration here should create non-homogenous output (ie NOT all 0's, and NOT all 1's) on a Spartan3E. If you want to move the pins you will need to regenerate the INIT string for each LUT which directly dictates the logic it implements.
  * In your testbench .ucf you will need to place each of the three substructures in the same SLICE. Refer to FPGA editor to get the location coords for a given SLICE.  Example:

```vhdl
    \# for spartan3e
    INST "tri1" LOC=SLICE_X15Y10;
    INST "tri2" LOC=SLICE_X15Y10;
    INST "RST_DFF" LOC=SLICE_X15Y10;
```

  * The EN pin should just be set to '1'. It is an artifact of the fact that you cannot have a constant signal inside a hard macro.
  * Declare your puf hard macro as a component in your testbench like below. It will be treated like a black box:

```vhdl
    component puf_single
	    port(
	    	en: in std_logic;
	    	rst: in std_logic;
	    	q1: out std_logic;
	    	q2: out std_logic;
	    	clk: in std_logic
	    	);
    end component;
```

  * To use the PUF just hold rst high for a cycle (let the DFF lock it in), then set it low. The following cycle q1 and q2 should be observed as inverse of each other; either can be used as the "output".
  * The *.nmc hard macro file need only be in the same directory as your other source code (for an ISE project). As a black-box object it is not explicitly added to the project; the component declaration is the key linkage with your implementing source code.

