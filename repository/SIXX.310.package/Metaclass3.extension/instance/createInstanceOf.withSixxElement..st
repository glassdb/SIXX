*sixx-instance creation
createInstanceOf: aClass withSixxElement: sixxElement 
	^ aClass isMeta
		ifTrue: [aClass thisClass]
		ifFalse: [aClass]