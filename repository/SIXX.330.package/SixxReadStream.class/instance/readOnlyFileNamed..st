initializing
readOnlyFileNamed: fileName 
	stream := SixxPortableUtil readFileStreamNamed: fileName.
	self initialize