*sixx-writing
sixxIgnorableInstVarNames
	"If you would like to omit some inst vars in serialization, List their names here."

	^super sixxIgnorableInstVarNames, #( name classHistory description
	                  migrationDestination timeStamp userId extraDict
	                  classCategory subclasses)