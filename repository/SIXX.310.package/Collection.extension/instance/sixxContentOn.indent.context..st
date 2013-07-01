*sixx-printing
sixxContentOn: aStream indent: level context: dictionary
	"default just uses #sixxDo: - override it to use #sixxMixedFieldsOn:indent:context: if your collection need to store some inst vars"
	self isEmpty ifFalse: [aStream nextPutAll: GRPlatform current newline].
	self
		sixxDo: [:each | each
				sixxOn: aStream
				indent: level + 1
				context: dictionary].
	self isEmpty ifFalse: [
		level timesRepeat: [ aStream nextPut: Character tab]].