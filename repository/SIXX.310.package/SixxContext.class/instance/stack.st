accessing
stack

	stack == nil ifTrue: [ stack := OrderedCollection new ].
	^stack