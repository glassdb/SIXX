tests
testSixxStringForDateTime
	"self debug: #testSixxStringForDateTime"
	| expectedStr |
	expectedStr := '<sixx.object sixx.id="0" sixx.type="DateTime" >19/07/2006 03:45:06</sixx.object>
'.
	self
		should: [(DateTime newGmtWithYear: 2006 dayOfYear: 200 seconds: 13506) sixxString = expectedStr]