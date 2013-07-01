actions
parseXml: xmlStringOrStream persistentRoot: persistentArrayOrNil
	^[self parserAdapter parseXml: xmlStringOrStream persistentRoot: persistentArrayOrNil ] on: Error
		do: [:ex | SixxPortableUtil signalException: (SixxXmlParseError originalError: ex)]