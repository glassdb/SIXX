tests
testReadSixxForDoubleByteString
	| sixxString string x |
	sixxString :=  '<sixx.object sixx.id="0" sixx.type="String" >Ì</sixx.object>
'.
	string := Object readSixxFrom: sixxString.
	self
		should: [string size = 1].
	self
		should: [(string at: 1) = (Character withValue: 16r300)].
	x := string class.
	self 
		should: [x = Unicode16]
