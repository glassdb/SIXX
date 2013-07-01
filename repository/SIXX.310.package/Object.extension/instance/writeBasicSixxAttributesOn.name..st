*sixx-private
writeBasicSixxAttributesOn: aStream name: nameString

	| constants |
	constants := SixxConstants current.
	SixxXmlUtil writeAttribute: constants nameTagName value: nameString on: aStream.
	SixxXmlUtil writeAttribute: constants typeTagName value: self sixxType on: aStream.
	SixxSettings useEnvironment
				ifTrue: [SixxXmlUtil
						writeAttribute: constants envTagName
						value: self sixxEnv
						on: aStream]