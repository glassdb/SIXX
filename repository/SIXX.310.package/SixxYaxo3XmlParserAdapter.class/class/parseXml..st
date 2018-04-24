actions
parseXml: xmlStringOrStream
	^ ((self environment at: #XMLDOMParser) parse: xmlStringOrStream) root