tests
testSixxStringForDoubleByteString
	| expectedStr |
	expectedStr :=  
		'<sixx.object sixx.id="0" sixx.type="String" >',
		(Character value: 16r300) asString,
		'</sixx.object>
'.
	self
		should: [(Character value: 16r300) asString sixxString = expectedStr]