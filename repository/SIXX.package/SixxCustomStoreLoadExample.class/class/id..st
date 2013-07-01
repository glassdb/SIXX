instance creation
id: anInteger
	| inst |
	inst := self new id: anInteger; cachedData: self nonCacheableData ; yourself.
	self instances add: inst.
	^inst