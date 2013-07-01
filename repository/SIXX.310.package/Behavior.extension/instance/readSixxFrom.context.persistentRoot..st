*sixx-instance creation
readSixxFrom: xmlStringOrStream context: aSixxContext persistentRoot: persistentArrayOrNil
	| topElem rootObj |
	topElem := SixxXmlUtil parseXml: xmlStringOrStream  persistentRoot: persistentArrayOrNil.
	(persistentArrayOrNil ~~ nil ) 
		ifTrue: [ persistentArrayOrNil add: aSixxContext ].
	rootObj := self readSixxFromSixxElement: topElem context: aSixxContext.
	persistentArrayOrNil ~~ nil ifTrue: [ persistentArrayOrNil size: 0 ].
	^rootObj