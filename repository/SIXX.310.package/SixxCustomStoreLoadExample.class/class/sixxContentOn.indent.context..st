sixx writing/reading
sixxContentOn: aStream indent: level context: dictionary 
	"override if you like"
	aStream nextPutAll: GRPlatform current newline.
	self instances
		sixxOn: aStream
		name: 'instances'
		indent: level + 1
		context: dictionary.
	level timesRepeat: [ aStream nextPut: Character tab ]
