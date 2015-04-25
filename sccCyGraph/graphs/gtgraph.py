#!/usr/bin/env python
# encoding: utf-8
"""
untitled.py

Created by iOsama on 2013-09-24.
Copyright (c) 2013 __MyCompanyName__. All rights reserved.
"""

import sys
import os

inputfile = "graph10to5.gr"
outputfile = inputfile + ".mtx"
x_value = 99999

def main():
	# open files
	fin = open(inputfile, 'r')
	fout = open(outputfile, 'w')

	# spare 8 lines
	for i in range(0,8):
		line = fin.readline()

	N = str(int(line.split()[2]) + 1)
	E = line.split()[3]
	print N, E
	fout.write(N + " " + N + " " + E + "\n")

	count = int(E)
	for line in fin:
		line = line.split()
		u = line[1]
		v = line[2]
		w = line[3]
		if count == 1:
			fout.write(u + " " + v)
		else:
			fout.write(u + " " + v + "\n")
		count -= 1

	fin.close()
	fout.close()
	pass

if __name__ == '__main__':
	main()

