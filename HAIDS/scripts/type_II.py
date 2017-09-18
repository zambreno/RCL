from Message import Message


# Get Message ID and Data
def get_message(message):

	messages = {}
	msg = Message(message)
	u = {"Message ID": msg.mid, "IDH": msg.idh, "IDL": msg.idl, "Data": msg.data, "Time Stamp": msg.TS}
	messages.update(u)
	return messages


# Define Anomaly Detection Rules
def classifier_ii(input_file):

	message_log = []
	watch_log = []
	anomaly_count = 0
	f = open(input_file, "r")
	for line in f:
		msg = get_message(line)
		if msg["Message ID"] == "0245" or "0620":
			watch_log.append(msg)
			anomaly_count += 1
			time_capture = msg["Time Stamp"]
			if anomaly_count > 2:
				time = msg["Time Stamp"] - time_capture
				if time < 50:
					print "anomaly detected"
				else:
					pass

		message_log.append(msg)
	print "Rules Check 2"
