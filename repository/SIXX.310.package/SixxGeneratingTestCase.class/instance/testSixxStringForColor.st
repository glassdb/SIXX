tests
testSixxStringForColor
	| expectedStr |
	expectedStr := '<sixx.object sixx.id="0" sixx.type="Color" >(Color r: 0.0000000000000000E+00 g: 0.0000000000000000E+00 b: 1.0000000000000000E+00)</sixx.object>
'.
	self
		should: [Color blue sixxString = expectedStr]