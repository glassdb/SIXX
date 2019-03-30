*sixx-printing
sixxContentOn: aStream indent: level context: dictionary
	self sixxChildrenContentsOn: aStream indent: level + 1 context: dictionary.
	level timesRepeat: [ aStream nextPut: Character tab ]
