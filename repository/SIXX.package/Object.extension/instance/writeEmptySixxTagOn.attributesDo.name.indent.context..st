*sixx-private
writeEmptySixxTagOn: aStream attributesDo: block name: nameString indent: level context: dictionary 
	| constants |
	level timesRepeat: [ aStream nextPut: Character tab ].
	constants := SixxConstants current.
	SixxXmlUtil
		writeEmptyTagNamed: constants objectTagName
		attributesDo: [:wStr | block value: wStr]
		on: aStream.
	aStream nextPutAll: GRPlatform current newline