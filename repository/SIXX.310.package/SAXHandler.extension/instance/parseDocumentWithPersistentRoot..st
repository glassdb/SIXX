*sixx-parsing
parseDocumentWithPersistentRoot: aPersistentArrayOrNil
	| result |

	aPersistentArrayOrNil
		ifNotNil: [
			aPersistentArrayOrNil add: self].
	[result := self parseDocument]
		ensure: [
			aPersistentArrayOrNil
				ifNotNil: [
					aPersistentArrayOrNil size: 0]].
	^ result.