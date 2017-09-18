#! /usr/bin/python
from Message import Message


def probability_calc(input_f, mids):

	global probability
	probability = {}
	total_messages = 0
	mids = []
	f = open(input_f, "r")
	for line in f:
		msg = Message(line)
		if msg.mid not in mids:
			total_messages += 1
			mids.append(msg.mid)
			u = {msg.mid: {"Count": 1, "Probability": (1/float(total_messages))}}
			probability.update(u)
		elif msg.mid in mids:
			total_messages += 1
			count = int(probability[msg.mid]["Count"]) + 1
			prob = (int(probability[msg.mid]["Count"]) / float(total_messages))
			u = {msg.mid: {"Count": count, "Probability": prob}}
			probability.update(u)
	f.close()
	return probability

"""
if __name__ == "__main__":
	log = "driving_data.dat"
	mids = []
	x = probability_calc(log, mids)
	print x[1]
"""
