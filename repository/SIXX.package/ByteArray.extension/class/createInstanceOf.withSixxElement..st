*sixx-instance creation
createInstanceOf: aClass withSixxElement: sixxElement 
	| rawStr col |
	rawStr := ReadStream
				on: (SixxXmlUtil characterDataFrom: sixxElement).
	col := rawStr peek = $#
				ifTrue: [Array readFrom: rawStr]
				ifFalse: [self readShortHexFrom: rawStr].
	^ self withAll: col