tests
testSixxStringForDoubleByteSymbol
	| expectedStr |
	expectedStr :=    '<sixx.object sixx.id="0" sixx.type="Symbol" >Ì</sixx.object>
'.
	self
		should: [(Character withValue: 16r300) asSymbol sixxString = expectedStr]