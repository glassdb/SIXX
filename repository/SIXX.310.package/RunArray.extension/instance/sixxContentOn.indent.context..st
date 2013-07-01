*sixx-printing
sixxContentOn: aStream indent: level context: dictionary 
	aStream cr.
	self runs
		sixxOn: aStream
		name: 'runs'
		indent: level + 1
		context: dictionary.
	self values
		sixxOn: aStream
		name: 'values'
		indent: level + 1
		context: dictionary.
	level timesRepeat: [ aStream nextPut: Character tab ]
