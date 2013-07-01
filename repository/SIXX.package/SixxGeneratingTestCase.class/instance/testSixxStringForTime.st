tests
testSixxStringForTime
	| expectedStr |
	expectedStr := '<sixx.object sixx.id="0" sixx.type="Time" >' 
				, (Time readSixxContentStringFrom: '1:30:59 pm' readStream) sixxContentString , '</sixx.object>
'.
	self 
		should: [(Time readSixxContentStringFrom: '1:30:59 pm' readStream) sixxString = expectedStr]