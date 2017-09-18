#! /usr/bin/python
from message_frequency import frequency_checker, get_timing
from probability_calculator import probability_calc
from entropy import entropy, entropy_checker
from type_I import classifiers_i
from type_II import classifier_ii
import detectors


class Message:
	def __init__(self, line):

		self.mid = 0x0000
		self.line = line
		pieces = line.split(',')

		if len(pieces) > 3:
			self.idh = pieces[0].split(':')[1].strip()
			self.idl = pieces[1].split(':')[1].strip()
			self.mid = self.idh + self.idl
			self.len = int(pieces[2].split(':')[1].strip(), 16)
			self.data = pieces[3].split(':')[1].strip()

			self.data_pieces = self.data.split(' ')
			if len(self.data_pieces) != self.len:
				print "ERROR - COULDN'T SPLIT DATA"
				print "line"
				print line
				print "self.data"
				print self.data


def check_for_message(msg, print_repeats, verbosity):
	global lines
	if msg.mid in lines.keys():
		entry = lines[msg.mid]
		if entry['len'] != msg.len:
			print "Issue with Packet Length"
			print msg.line
			if not print_repeats:
				add_msg_to_data(msg)
		for x in range(msg.len):
			if msg.data_pieces[x] not in entry[x].keys():
				if verbosity == 0:
					print msg.mid
				if not print_repeats:
					add_msg_to_data(msg)
	else:
		print "New Message Type" + msg.mid


def add_msg_to_data(msg):
	global lines
	if msg.mid in lines.keys():
		entry = lines[msg.mid]
		if entry['len'] != msg.len:
			print "Packets with mis-matching lengths"
		for x in range(msg.len):
			if msg.data_pieces[x] in entry[x].keys():
				entry[x][msg.data_pieces[x]] = entry[x][msg.data_pieces[x]] + 1
			else:
				entry[x][msg.data_pieces[x]] = 1
	else:
		entry = {'len': msg.len}
		for x in range(msg.len):
			entry[x] = {msg.data_pieces[x]: 1}
	lines[msg.mid] = entry


def get_data(file_name):
	f = open(file_name, "r")
	for line in f:
		msg = Message(line)
		if msg.mid != 0:
			add_msg_to_data(msg)

def evaluator(v,x,y,z):
	if detectors.message_detector_status == 1 and detectors.entropy_detector_status == 1:
		print "Anomaly detected"
	pass

# Open and Read Log file
if __name__ == "__main__":
	input_file = "input.dat"
	attack_data = "attack_log.dat"
	lines = {}
	mids = []
	detectors.message_detector_status = 0
	detectors.entropy_detector_status = 0
	detectors.classifier_I_status = 0
	detectors.classifier_II_status = 0

	# get_data(input_file)

# Check Message Frequency IDS
	# for line in lines:
	mt = get_timing(input_file, mids)
	frequency_checker(attack_data, mids, mt)

# Entropy IDS
	# Calculate Probabilities
	x = probability_calc(input_file, mids)
	# Calculate Entropy
	e = entropy(input_file, mids, x)
	entropy_checker(attack_data, mids, e)

# Class 1 Observers
	#classifiers_i(attack_data)

# Class 2 Observers
	#classifiers_ii(attack_data)
