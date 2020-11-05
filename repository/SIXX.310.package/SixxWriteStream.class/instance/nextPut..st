writing
nextPut: anObject
	self startTag.
	persistentRoot ~~ nil
		ifTrue: [ 
			persistentRoot
				add: self stream;
				add: self contextDictionary ].
	anObject sixxOn: self stream indent: 1 context: self contextDictionary.
	persistentRoot ~~ nil
		ifTrue: [ persistentRoot size: 0 ]