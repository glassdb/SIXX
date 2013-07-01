*sixx-instance creation
createInstanceOf: aClass withSixxElement: sixxElement
	^ (SixxXmlUtil characterDataFrom: sixxElement)  encodeAsUTF8 asString