from Message import Message


# Get Message ID and Data
def get_message(message):

	messages = {}
	msg = Message(message)
	# Check for diagnostic message ID
	if msg.idh == "07":
		print "Diagnostic Anomaly"
	else:
		pass
	u = {"Message ID": msg.mid, "IDH": msg.idh, "IDL": msg.idl, "Data": msg.data, "Time Stamp": msg.TS}

	messages.update(u)
	return messages


# Define Anomaly Detection Rules
def classifiers_i(input_file):

	message_log = []
	f = open(input_file, "r")
	for line in f:
		messages = get_message(line)
		message_log.append(messages)
		print "messages"
		print messages
	print message_log
	print "Rules Check 1"


if __name__ == "__main__":
	input_file = "output.dat"
	output_file = "attack_log.dat"

	classifiers_i(input_file)
