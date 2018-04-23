*sixx-parsing
parse: aStringOrStream persistentRoot: aPersistentArrayOrNil
	^ (self on: aStringOrStream)
		parseDocumentWithPersistentRoot: aPersistentArrayOrNil