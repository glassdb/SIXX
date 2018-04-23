*sixx-printing
sixxContentOn: aStream indent: level context: dictionary
	"SixxInvalidSerialization signal: self class name context: dictionary."
	aStream nextPutAll: '{', self _sourceString, '}'; nextPutAll: GRPlatform current newline.