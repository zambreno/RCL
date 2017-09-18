#! /usr/bin/python
from Message import Message

# Read log and get metrics [#Msgs, Msg IDs]
def reading_log(input_file):

	mids = []
	messages = {}
	total_messages = 0
	f = open(input_file, "r")
	for line in f:
		msg = Message(line)
		if msg.mid not in mids:
			total_messages += 1
			mids.append(msg.mid)
			u = {msg.mid: {"Count": 1}}
			messages.update(u)
		elif msg.mid in mids:
			total_messages += 1
			count = int(messages[msg.mid]["Count"]) + 1
			u = {msg.mid: {"Count": count}}
			messages.update(u)
	f.close()
	print "Total Messages: %i" % total_messages
	print messages
	return messages


# Creating new log file based on specific metrics
# Attack log: 2x,5x,10x Msg ID injection
def writing_log(input_file, output_file):
	time = 0
	out = open(output_file, "w")
	packet = "IDH: %02X, IDL: %02X, Len: 08, Data: "
	# out.write(packet + '\n')
	f = open(input_file, "r")
	for line in f:
		time += 1
		msg = Message(line)
		msg.TS = time
		message = "IDH: %02X, IDL: %02X, Len: %02X, Data: %s TS: %s" % (int(msg.idh, 16), int(msg.idl, 16), int(msg.len, 16), msg.data, msg.TS)
		print message
		out.write(message + '\n')

	f.close()


if __name__ == "__main__":

	input_file = "output.dat"
	output_file = "attack_log.dat"
	reading_log(output_file)
	#writing_log(input_file, output_file)
