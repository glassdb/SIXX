*sixx-initializing
initializeFromSixxElement: sixxElement context: aSixxContext 
	| coll |
	coll := (SixxXmlUtil elementsFrom: sixxElement) select: [:elem | (SixxXmlUtil isTextFrom: elem) not ].
	coll reverse
		do: [:elem | | varName | 
			varName := self class nameFromSixxElement: elem.
			varName notNil
				ifTrue: [
					aSixxContext stack add: #block -> [:objects | | childInst v | 
						v := objects removeLast.
						childInst := objects removeLast.
						self sixxInstVarNamed: v put: childInst ].
					aSixxContext stack add: #ref -> varName copy.
					aSixxContext stack add: #from -> {self class. elem.} ]]