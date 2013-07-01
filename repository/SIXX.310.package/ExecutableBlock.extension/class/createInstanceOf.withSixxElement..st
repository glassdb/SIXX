*sixx-instance creation
createInstanceOf: aClass withSixxElement: sixxElement 
	| src result marker meth o symbolList f l|
	src := SixxXmlUtil characterDataFrom: sixxElement.
	f := src indexOf: ${ startingAt: 1.
	l := src findLastOccuranceOfString: '}' startingAt: f.
	(f > 0 and: [l > 0 ])
		ifFalse: [
			SixxInvalidDeserialization signal: aClass name element: sixxElement.
			^nil].
	src := src copyFrom: f + 1 to: l - 1.
	symbolList := System myUserProfile symbolList .
	[ meth := src _compileInContext: (o := Object new) symbolList: symbolList ]
		on: Error
		do: [:ex | 
			SixxInvalidDeserialization signal: aClass name element: sixxElement.
			Transcript cr; show: 'Error in recreating a ', aClass name, ' ', ex description , ' for: ', src printString.
			^nil ].
	result := meth _executeInContext: o.
	(result == nil _or: [(result isKindOf: SimpleBlock) not]) 
		ifTrue: [
			"error in compiling"
			SixxInvalidDeserialization signal: aClass name element: sixxElement. 
			^nil ]
		ifFalse: [ ^result ]
