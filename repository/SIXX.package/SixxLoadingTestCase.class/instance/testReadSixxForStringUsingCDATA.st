tests
testReadSixxForStringUsingCDATA
	| originalSetting sixxString string |
	[originalSetting := SixxSettings useCDATA.
	SixxSettings useCDATA: true.
	sixxString := '<sixx.object sixx.id="0" sixx.type="String" ><![CDATA[Hi, I''m String-object.
How are you?
]]></sixx.object>
'.
	string := Object readSixxFrom: sixxString.
	self
		should: [string = 'Hi, I''m String-object.
How are you?
']]
		ensure: [SixxSettings useCDATA: originalSetting]