*sixx-writing
sixxIgnorableInstVarNames
	"If you would like to omit some inst vars in serialization, List their names here."

	^super sixxIgnorableInstVarNames, #( timeStamp userId extraDict
	                  classCategory subclasses)