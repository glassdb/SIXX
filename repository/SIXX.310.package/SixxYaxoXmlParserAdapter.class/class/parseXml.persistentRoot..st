actions-parse
parseXml: xmlStringOrStream persistentRoot: persistentArrayOrNil
	| stream |
	stream := xmlStringOrStream isStream
				ifTrue: [xmlStringOrStream]
				ifFalse: [xmlStringOrStream readStream].
	^ (XMLDOMParser parseDocumentFrom: stream persistentRoot: persistentArrayOrNil) topElement