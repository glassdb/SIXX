tests
testReadSixxForBooleanObject
	| sixxString booleanObj |
	sixxString := '<sixx.object sixx.id="0" sixx.type="SixxMockBooleanData" >
	<sixx.object sixx.name="embedded" sixx.type="True" />
	<sixx.object sixx.name="notEmbedded" sixx.type="False" />
</sixx.object>
'.
	booleanObj := Object readSixxFrom: sixxString.
	self
		assert: booleanObj embedded;
		deny: booleanObj notEmbedded
			
