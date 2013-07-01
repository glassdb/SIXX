*sixx-accessing
instVarAt: anIndex put: aValue
"Stores the argument aValue in the class instance variable indicated by anIndex.
 Generates an error if anIndex is not a SmallInteger or is out of bounds, 
 or if the receiver has no instance variables, 
 or if an attempt is being made to store into the class instance variables of Class itself."

	anIndex <= Class class allInstVarNames size 
		ifTrue: [ ^self error: 'Attempt to modify reserved class instance variable' ].
	^self _unsafeAt: anIndex put: aValue
