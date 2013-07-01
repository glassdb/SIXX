tests
testSixxStringForDate
	| expectedStr |
	expectedStr := '<sixx.object sixx.id="0" sixx.type="Date" >14 May 2002</sixx.object>
'.
	self
		should: [(Date
				newDay: 14
				month: 'May'
				year: 2002) sixxString = expectedStr]