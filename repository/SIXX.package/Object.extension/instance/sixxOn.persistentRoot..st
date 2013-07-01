*sixx-printing
sixxOn: aStream persistentRoot: persistentArrayOrNil
	| context |
	context := SixxContext forWrite.
	(persistentArrayOrNil ~~ nil ) 
		ifTrue: [ 
			persistentArrayOrNil 
				add: aStream;
				add: context ].
	self sixxOn: aStream indent: 0 context: context.
	persistentArrayOrNil ~~ nil ifTrue: [ persistentArrayOrNil size: 0 ].