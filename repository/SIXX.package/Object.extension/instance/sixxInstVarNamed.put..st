*sixx-initializing
sixxInstVarNamed: instVarName put: aValue 
	"override if you like"
	"can be used for changing shape"
	| index |
	index := self class allInstVarNames indexOf: instVarName asSymbol.
	index = 0 ifTrue: [^self].
	self
		instVarAt: index
		put: aValue