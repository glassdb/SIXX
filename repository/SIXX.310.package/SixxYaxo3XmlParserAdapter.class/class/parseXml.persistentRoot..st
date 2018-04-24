actions
parseXml: xmlStringOrStream persistentRoot: persistentArrayOrNil
	^ ((self environment at: #XMLDOMParser)
		parse: xmlStringOrStream
		persistentRoot: persistentArrayOrNil) root