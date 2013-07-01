tests
testReadSixxForTime
	| sixxString |
	sixxString := '<sixx.object sixx.id="0" sixx.type="Time" >4:10:32 pm</sixx.object>
'.
	self
		should: [(Object readSixxFrom: sixxString)
				= (Time
						readFrom: (ReadStream on: '4:10:32 pm'))]