*sixx-initializing
initializeIndexFieldsFromSixxElement: sixxElement context: aSixxContext 
	| idx nonameElems |
	nonameElems := ((SixxXmlUtil elementsFrom: sixxElement)
				select: [:each | (self class nameFromSixxElement: each) isNil ]) select: [:elem | (SixxXmlUtil isTextFrom: elem) not ].
	idx := nonameElems size.
	nonameElems reverse
		do: [:elem |
			aSixxContext stack add: #block -> [:objects | | childInst i | 
				i := objects removeLast.
				childInst := objects removeLast.
				self sixxAt: i put: childInst ].
			aSixxContext stack add: #ref -> idx.
			aSixxContext stack add: #from -> {self class. elem.}.
			idx := idx - 1 ]