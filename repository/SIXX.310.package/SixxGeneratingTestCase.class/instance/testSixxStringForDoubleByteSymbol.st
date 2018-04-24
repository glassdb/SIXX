tests
testSixxStringForDoubleByteSymbol
	| expectedStr |
	expectedStr :=
		'<sixx.object sixx.id="0" sixx.type="Symbol" >',
		(Character value: 16r300) asString,
		'</sixx.object>
'.
	self
		should: [(Character value: 16r300) asSymbol sixxString = expectedStr]