tests
testSixxStringForBooleanObject
	| expectedStr booleanObj |
	expectedStr :='<sixx.object sixx.id="0" sixx.type="SixxMockBooleanData" >
	<sixx.object sixx.name="embedded" sixx.type="True" />
	<sixx.object sixx.name="notEmbedded" sixx.type="False" />
</sixx.object>
'.

	booleanObj := SixxMockBooleanData example.
	self
		should: [booleanObj sixxString = expectedStr].
	
	