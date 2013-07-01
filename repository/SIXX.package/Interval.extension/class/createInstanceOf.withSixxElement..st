*sixx-instance creation
createInstanceOf: aClass withSixxElement: sixxElement 
	^ self readFrom: (ReadStream on: (SixxXmlUtil characterDataFrom: sixxElement))