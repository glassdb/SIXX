*sixx-parsing
parse: aStringOrStream usingNamespaces: aBoolean persistentRoot: aPersistentArrayOrNil
	^ (self on: aStringOrStream)
		usesNamespaces: aBoolean;
		parseDocumentWithPersistentRoot: aPersistentArrayOrNil