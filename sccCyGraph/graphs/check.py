#!/usr/bin/env python
# encoding: utf-8
"""
untitled.py

Created by iOsama on 2013-09-24.
Copyright (c) 2013 __MyCompanyName__. All rights reserved.
"""

import sys
import os

inputfile = "reversed.mtx"
outputfile = inputfile + ".out"
x_value = 99999

def main():
	# open files
	fin = open(inputfile, 'r')
	fout = open(outputfile, 'w')

	# get graph info
	line = fin.readline()
	N = line.split(" ")[0]
	M = line.split(" ")[1]
	nonZeros = line.split(" ")[2]

	if x_value > int(N):
		print "ERROR: last node exceeds given N!"
		exit(0)

	# Count updated non-zeros
	count = 0
	for line in fin:
		line = line.split(" ")
		u = int(line[0])
		v = int(line[1])
		if u <= x_value and v <= x_value:
			count += 1

	# Write updated non-zeros
	fout.write(str(x_value) + " " + str(x_value) + " " + str(count) + "\n")
	fin.seek(1)
	for line in fin:
		line = line.split(" ")
		u = int(line[0])
		v = int(line[1])
		if u <= x_value and v <= x_value:
			if count > 1:
				fout.write(str(u) + " " + str(v) + "\n")
				count -= 1
			else:
				fout.write(str(u) + " " + str(v))
				count -= 1

	fin.close()
	fout.close()
	pass

if __name__ == '__main__':
	main()

