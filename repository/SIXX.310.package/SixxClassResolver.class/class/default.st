accessing
default
	"self initialize"
	
	default == nil ifTrue: [ self initDefault ].
	^default
