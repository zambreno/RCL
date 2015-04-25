#!/usr/bin/env python

"""
untitled.py

Created by iOsama on 2013-09-24.
Copyright (c) 2014 __MyCompanyName__. All rights reserved.
"""

import sys
import os

inputfile = "graph10to5.gr"
outputfile = inputfile + ".mtx"

def main(argv):
	if (len(argv) >= 1):
		inputfile = argv[0]
		outputfile = "rev_" + inputfile
	else:
		print "Error"
		exit(1)

	# open files
	fin = open(inputfile, 'r')
	fout = open(outputfile, 'w')
	
	# get graph info
	line = fin.readline()
	N = line.split(" ")[0]
	M = line.split(" ")[1]
	nonZerosCount = int(line.split(" ")[2])

	# print graph info to the new file
	fout.write(N + " " + M + " " + str(nonZerosCount) + "\n")

	# read edges, store reversed in edges dictionary
	edges = {}
	for line in fin:
		line = line.split(" ")
		u = int(line[0])
		v = int(line[1])
		if v in edges:
			edges[v].append(u)
		else:
			edges[v] = [u]
	
	# write reversed graph edges
	for u in range(0, nonZerosCount + 1):
		if u in edges:
			for v in sorted(edges[u]):
				fout.write(str(u) + " " + str(v) + "\n")

	# close files
	fin.close()
	fout.close()
	pass

if __name__ == '__main__':
	main(sys.argv[1:])

