actions-parse
parseXml: xmlStringOrStream 
	| stream |
	stream := xmlStringOrStream isString ifFalse: [xmlStringOrStream]
				ifTrue: [xmlStringOrStream readStream].
	^ ((self environment at: #XMLDOMParser) parseDocumentFrom: stream) topElement