actions
readFileStreamNamed: aFilename
	"#Squeak Specific#"
	
	| file stream |
	file := FileDirectory default readOnlyFileNamed: aFilename.
	[stream := ReadStream on: file contents] 
		ensure: [ file close ].
	^stream