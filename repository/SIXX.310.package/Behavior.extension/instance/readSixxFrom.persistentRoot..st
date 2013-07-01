*sixx-instance creation
readSixxFrom: xmlStringOrStream persistentRoot: persistentArrayOrNil
	^ self readSixxFrom: xmlStringOrStream context: SixxContext forRead persistentRoot: persistentArrayOrNil