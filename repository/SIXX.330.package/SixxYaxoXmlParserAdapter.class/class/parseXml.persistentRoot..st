actions-parse
parseXml: xmlStringOrStream persistentRoot: persistentArrayOrNil
	| stream |
	stream := xmlStringOrStream isStream
		ifTrue: [ xmlStringOrStream ]
		ifFalse: [ ReadStream on: xmlStringOrStream ].
	^ (XMLDOMParser parseDocumentFrom: stream persistentRoot: persistentArrayOrNil)
		firstElement