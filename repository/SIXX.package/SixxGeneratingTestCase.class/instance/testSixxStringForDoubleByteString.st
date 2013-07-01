tests
testSixxStringForDoubleByteString
	| expectedStr |
	expectedStr :=   '<sixx.object sixx.id="0" sixx.type="String" >Ì</sixx.object>
'.
	self
		should: [(Character withValue: 16r300) asString sixxString = expectedStr]