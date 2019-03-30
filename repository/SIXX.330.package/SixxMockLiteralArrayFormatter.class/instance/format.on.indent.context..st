override hooks
format: array on: aStream indent: level context: dictionary 
	aStream nextPutAll: GRPlatform current newline.
	array squeakPrintString
		sixxOn: aStream
		indent: level + 1
		context: dictionary.
	level timesRepeat: [ aStream nextPut: Character tab ]
