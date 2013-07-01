*sixx-instance creation
createInstanceOf: aClass withSixxElement: sixxElement
	^ (SixxXmlUtil characterDataFrom: sixxElement) decodeFromUTF8 asString