*sixx-writing
sixxIgnorableInstVarNames
	"If you would like to omit some inst vars in serialization, List their names here."

	^#( superClass format instVars
	                  instVarNames constraints classVars methodDict
	                  poolDictionaries categories secondarySuperclasses)