tests
testReadSixxForCharacter
	| sixxString char |
	char := Character value: 16rFFF.
	sixxString := '<sixx.object sixx.id="2196" sixx.type="Character" >', 
		'(', 16rFFF asString, ' asCharacter)',
'</sixx.object>
'.
	self assert: char = (Object readSixxFrom: sixxString).