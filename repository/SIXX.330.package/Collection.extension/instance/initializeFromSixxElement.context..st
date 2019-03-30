*sixx-initializing
initializeFromSixxElement: sixxElement context: aSixxContext 
	"override to use #initializeMixedFieldsFromSixxElement:context: if having some inst vars"
	(SixxXmlUtil elementsFrom: sixxElement) reverse
		do: [:elem | 
			aSixxContext stack add: #block -> [:objects | | childInst |
				childInst := objects removeLast.
				self add: childInst].
			aSixxContext stack add: #from -> {self class. elem.} ]