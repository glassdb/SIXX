actions
parseXml: xmlStringOrStream 
	| stream parser |
	stream := xmlStringOrStream isString ifFalse: [xmlStringOrStream]
				ifTrue: [xmlStringOrStream readStream].
	parser := (self environment at: #VWXMLXMLParser) on: stream.
	parser validate: false.
	^ parser scanDocument root