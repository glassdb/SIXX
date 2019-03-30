tests
testSixxStringForMultiByteCharacter
	| char expectedStr |
	char := Character withValue: 16rFFF.
	expectedStr := '<sixx.object sixx.id="0" sixx.type="Character" >$', 
		(String with: (Character withValue: 16rF) with: (Character withValue: 16rFF)),
'</sixx.object>
'.
	self
		should: [char sixxString = expectedStr]