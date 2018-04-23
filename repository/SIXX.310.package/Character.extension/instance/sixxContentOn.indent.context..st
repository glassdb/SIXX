*sixx-printing
sixxContentOn: aStream indent: level context: dictionary
	(self isXMLChar
		and: [self asInteger <= 16rFF])
		ifTrue: [aStream nextPutAll: self printString]
		ifFalse: [
			aStream
				nextPut: $(;
				nextPutAll: self asInteger asString;
				nextPutAll: ' asCharacter)']