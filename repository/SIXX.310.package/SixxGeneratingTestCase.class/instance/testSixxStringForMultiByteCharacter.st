tests
testSixxStringForMultiByteCharacter
	| char expectedStr |
	char := Character value: 16rFFF.
	expectedStr := '<sixx.object sixx.id="0" sixx.type="Character" >(', 
		16rFFF asString,
' asCharacter)</sixx.object>
'.
	self
		should: [char sixxString = expectedStr]