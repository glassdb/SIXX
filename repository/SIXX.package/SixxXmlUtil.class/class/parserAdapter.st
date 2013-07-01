accessing
parserAdapter
	parserAdapter isNil
		ifTrue: [parserAdapter := (self environment includesKey: #XMLDOMParser)
						ifTrue: [self environment at: #SixxYaxoXmlParserAdapter]
						ifFalse: [(self environment includesKey: #VWXMLXMLParser)
								ifTrue: [self environment at: #SixxVwXmlParserAdapter]]].
	^ parserAdapter