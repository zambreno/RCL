class Message:
	def __init__(self, line):

		self.mid = 0x0000
		self.line = line
		# Break into pieces
		pieces = line.split(',')

		if len(pieces) > 3:
			self.idh = pieces[0].split(':')[1].strip()
			self.idl = pieces[1].split(':')[1].strip()
			self.mid = self.idh + self.idl
			self.len = pieces[2].split(':')[1].strip()
			self.data = pieces[3].split(':')[1].strip()

			# Get Time Stamp
			self.TS = pieces[3].split(':')[2]



			# addition of timestamp require to remove it
			data_ts = pieces[3].split(':')[1]
			ts_offset = data_ts.find("TS")

			if ts_offset != 0:
				self.data = data_ts[:ts_offset].strip()
			else:
				self.data = data_ts.strip()

	"""
	def __repr__(self):
		return "IDH: %02X, IDL: %02X, Len: %02X, Data: %s" % (int(self.idh, 16), int(self.idl, 16), int(self.len, 16), self.data)

	def __str__(self):
		return "IDH: %02X, IDL: %02X, Len: %02X, Data: %s" % (int(self.idh, 16), int(self.idl, 16), int(self.len, 16), self.data)

	def __cmp__(self, other):
		assert isinstance(other, Message)

		return cmp((self.mid, self.len, self.data), (other.Mid, other.len, other.data))
	"""
