*sixx-printing
sixxContentOn: aStream indent: level context: dictionary
	"Override if you like"
	"Typically usable for a customized serialization of the receiver's elements"
	self sixxChildrenContentsOn: aStream indent: level + 1 context: dictionary.
	level timesRepeat: [ aStream nextPut: Character tab ]
