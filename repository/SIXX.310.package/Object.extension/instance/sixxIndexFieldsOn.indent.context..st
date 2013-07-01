*sixx-private
sixxIndexFieldsOn: aStream indent: level context: dictionary 
	"override if you like"
	| size ivCount |
	size := self basicSize.
	ivCount := self class allInstVarNames size.
	size <= ivCount
		ifTrue: [^ self].
	1
		to: size - ivCount
		do: [:i | 
			| element | 
			element := self basicAt: i.
			element 
				sixxOn: aStream
				indent: level
				context: dictionary]