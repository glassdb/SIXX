*sixx-initializing
initializeFromSixxElement: sixxElement context: aDictionary 
	self class isSpecial
		ifTrue: [^ self initializeIndexFieldsFromSixxElement: sixxElement context: aDictionary].
	self class isVariable
		ifTrue: [^ self initializeMixedFieldsFromSixxElement: sixxElement context: aDictionary].
	self initializeInstVarsFromSixxElement: sixxElement context: aDictionary