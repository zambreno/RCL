from Message import Message
import detectors


# Gets normal values for Message timings
def get_timing(input_file, mids):

	message_timings = {}
	time_old = {}
	f = open(input_file, "r")
	for line in f:
		msg = Message(line)
		if msg.mid not in mids:
			mids.append(msg.mid)
			u = {msg.mid: {"Time Stamp": msg.TS, "Message Timing": 0}}
			message_timings.update(u)
			t = {msg.mid: {"Time Stamp": msg.TS}}
			time_old.update(t)
		elif msg.mid in mids:
			msg_freq = float(msg.TS)-float(time_old[msg.mid]["Time Stamp"])
			time_old.update({msg.mid: {"Time Stamp": msg.TS}})
			# frequency = (msg_freq + message_timings[msg.mid]["Message Timing"]) / 2
			u = {msg.mid: {"Time Stamp": msg.TS, "Message Timing": msg_freq}}
			message_timings.update(u)
	f.close()
	print "Message Timings"
	print message_timings
	return message_timings


# Checks Timing of the Messages and indicates if timing is out of normal range.
def frequency_checker(input_file, mids, message_timings):

	# {"Msg_ID": msg.mid, "Time Stamp": msg.ts, "Frequency Range": x}
	msg_id = []
	message = {}
	time_old = {}
	msg_timing = message_timings
	# Message Frequency Range constant for each MID
	# {msg.mid: message_freq}
	f = open(input_file, "r")
	for line in f:
		# Get Message ID
		msg = Message(line)
		# Need to set up old_time for every MSG ID before frequency check
		if msg.mid not in msg_id:
			msg_id.append(msg.mid)
			u = {msg.mid: {"Time Stamp": msg.TS, "Message Timing": 0, "Message Frequency": 0}}
			message.update(u)
			t = {msg.mid: {"Time Stamp": msg.TS}}
			time_old.update(t)
		# Get Message Time
		elif msg.mid in msg_id:
			# Calculate Message Frequency
			msg_freq = float(msg.TS)-float(time_old[msg.mid]["Time Stamp"])
			time_old.update({msg.mid: {"Time Stamp": msg.TS}})
			u = {msg.mid: {"Time Stamp": msg.TS, "Message Frequency": msg_freq}}
			message.update(u)
			if (float(msg_timing[msg.mid]["Message Timing"]) - (float(msg_timing[msg.mid]["Message Timing"]) * 0.5)) \
					<= int(message[msg.mid]["Message Frequency"]) <= \
					(float(msg_timing[msg.mid]["Message Timing"]) + (float(msg_timing[msg.mid]["Message Timing"]) * 0.5)):
				pass
			else:
				print "Increased message frequency detected"
				print msg.mid
				print message[msg.mid]["Message Frequency"]
				print "Normal Message Timing"
				print msg_timing[msg.mid]["Message Timing"]
				detectors.message_detector_status = 1
				#print "msg_detect_stat"
				#print detectors.message_detector_status

	f.close()

