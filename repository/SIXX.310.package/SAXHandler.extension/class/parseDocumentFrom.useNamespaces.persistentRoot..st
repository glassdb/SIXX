*sixx-parsing
parseDocumentFrom: aStringOrStream useNamespaces: aBoolean persistentRoot: aPersistentArrayOrNil
	self deprecated:
		'use #parse:usingNamespaces:persistentRoot: or an #on* message ',
		'with #parseDocumentWithPersistentRoot:'.
	^ self
		parse: aStringOrStream
		usingNamespaces: aBoolean
		persistentRoot: aPersistentArrayOrNil