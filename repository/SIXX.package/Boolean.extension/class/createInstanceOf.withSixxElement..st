*sixx-instance creation
createInstanceOf: aClass withSixxElement: sixxElement 
	
	| type |
	type := self typeFromSixxElement: sixxElement.
	^type == #'True'