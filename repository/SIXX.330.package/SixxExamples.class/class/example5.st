examples
example5
	"SixxExamples example5"
	"Write object data to an external file"
	
	| sws |
	sws := SixxWriteStream newFileNamed: ('obj.sixx').
	sws nextPut: Color random.
	sws nextPut: Collection subclasses.
	sws nextPutAll: Collection subclasses. "note the differences"
	sws close.
