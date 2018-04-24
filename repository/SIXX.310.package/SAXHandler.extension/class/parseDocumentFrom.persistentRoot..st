*sixx-parsing
parseDocumentFrom: aStringOrStream persistentRoot: aPersistentArrayOrNil
	self deprecated:
		'use #parse:persistentRoot: or an #on* message ',
		'with #parseDocumentWithPersistentRoot:'.
	^ self
		parse: aStringOrStream
		persistentRoot: aPersistentArrayOrNil