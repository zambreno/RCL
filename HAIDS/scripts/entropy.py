from Message import Message
from probability_calculator import probability_calc
import math
import detectors



# Calculates Entropy of Messages and Compares to Normal Value(s)
def entropy(input_file, mids, probability):

	ent = 0.0
	f = open(input_file, "r")
	for line in f:
		# Get Message ID
		msg = Message(line)
		for msg.mid in mids:
			# Get Message ID Probability
			probs = probability[msg.mid]["Probability"]
			# Calculate Message Entropy
			# H(x) = Sum(Prob(x)*log(Prob(x))

			ent = ent + probs + math.log(probs, 2)

			#e = {"Message ID": msg.mid, "Entropy": ent}
			#ent.update(e)
	# print "Entropy"
	# print ent
	ent = -ent
	return ent


def entropy_checker(input_file, mids, normal_entropy):
	# Calculate Normal Entropy Value(s)
	data_prob = probability_calc(input_file, mids)
	ent = entropy(input_file, mids, data_prob)
	# Entropy Check
	if (normal_entropy - ((normal_entropy) * 0.1)) <= ent <= \
			(normal_entropy + ((normal_entropy) * 0.1)):
		print "All Good"
		pass
	else:
		print "Entropy Anomaly"
		print ent
		print "normal entropy"
		print normal_entropy
		detectors.entropy_detection_status = 1
