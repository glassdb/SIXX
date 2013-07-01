*sixx-instance creation
createInstanceOf: aClass withSixxElement: sixxElement 
	| readStr x y |
	readStr := ReadStream on: (SixxXmlUtil characterDataFrom: sixxElement).
	x := (readStr upTo: $@) asNumber.
	y := (readStr upToEnd) asNumber.
	^self x: x y: y