import sys
from Message import Message

if __name__ == "__main__":

	if (len(sys.argv) < 3):
		print "Usage: %s <inputfile> <outputfile> <11-bit CAN ID>" % (sys.argv[0])
		print "Example1: %s input.dat output.dat 0025" % (sys.argv[0])
		sys.exit(1)

	wid_search = 1
	wids = []
	low = 0
	high = 0
	input_file = sys.argv[1]
	output_file = sys.argv[2]
	find_wid = sys.argv[3]

	if find_wid.find(',') != -1:
		ids = find_wid.split(",")
		for wid in ids:
			wids.append(wid.strip())
		width_search = 2
	elif find_wid.find("-") != -1:
		ids = find_wid.split("-")
		low = int(ids[0].strip(), 16)
		high = int(ids[1].strip(), 16)
		wid_search = 3

	f = file(input_file, "r")

	messages = []
	count = 0
	for line in f:
		message = Message(line)
		if message.wid != 0:
			if wid_search == 1:
				if message.wid == find_wid:
					count += 1
					messages.append(line)
			elif wid_search ==2:
				if message.wid in wids:
					count += 1
					messages.append(line)
			elif wid_search == 3:
				wid = int(message.wid, 16)
				if wid >= low and wid <= high:
					count += 1
					messages.append(line)
	f.close()

	f = file(output_file, "w")

	for found in messages:
		f.write(str(found) + '\n')
	f.close()
