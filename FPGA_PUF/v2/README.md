This directory includes files to produce a revised version of the original FPGA PUF. This version does not utilize hard macros and is therefore a bit easier to work with. However, in order to ensure each PUF instance is identical (e.g. to produce a large array), the routing for each cell must be locked down in some way. For this version, that is done by inserting DIRT (directed routing) constraints directly into the source code.

The Perl script "makepuf.pl" automates the required workflow to produce the final source code file (sram_puf.vhd) which can be used in a project like any other source code file.

Notes: 
  * The original version targetted 4 input LUTs whereas this one targets 6 input LUTs (e.g. Spartan 6 and upward). This means there are more routing permutations.
  * This was originally run on a Linux machine (both Ubuntu and Redhat) but it could probably also work fine on Windows. The paths to all the Xilinx tools (e.g. build tools in the Makefile, and fpga_edline) should be on PATH.
  
