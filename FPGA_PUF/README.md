This project folder contains the files to produce the FPGA based PUF design described in the IEEE 2012 ICCD conference paper "Design and Evaluation of a FPGA-Based FPGA Physically Unclonable Function".

  * The folder "v1" contains the original design which was based on hard macros. It targeted Xilinx Spartan 3E (or in general Xilinx devices with 4-input LUTs).
  * The folder "v2" contains a revised version where routing is not fixed via hard macro but rather through in-sourcecode constrants. It targeted Xilinx Spartan 6 and Zynq (or in general Xilinx devices with 6-input LUTs).
