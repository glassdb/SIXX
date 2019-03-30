tests
testExample6
	"SixxExamples example6"

	| srs objects |
	SixxExamples example5. "create the file"
	srs := SixxReadStream readOnlyFileNamed: ('obj.sixx').
	objects := OrderedCollection new.
	[srs atEnd] whileFalse: [objects add: srs next].
	srs close.
