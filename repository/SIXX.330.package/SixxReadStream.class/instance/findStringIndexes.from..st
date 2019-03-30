private-recovery
findStringIndexes: subString from: sourceString 
	| foundIndexes index |
	foundIndexes := OrderedCollection new.
	index := 1.
	[index = 0]
		whileFalse: [index := sourceString findString: subString startingAt: index.
			index = 0
				ifFalse: [foundIndexes add: index.
					index := index + 1]].
	^ foundIndexes