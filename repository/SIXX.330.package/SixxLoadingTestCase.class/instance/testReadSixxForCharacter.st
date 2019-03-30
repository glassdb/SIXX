tests
testReadSixxForCharacter
	| sixxString char |
	char := Character withValue: 16rFFF.
	sixxString := '<sixx.object sixx.id="2196" sixx.type="Character" >$', 
		(String with: (Character withValue: 16rF) with: (Character withValue: 16rFF)),
'</sixx.object>
'.
	self assert: char = (Object readSixxFrom: sixxString).
	