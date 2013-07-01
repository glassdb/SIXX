*sixx-instance creation
readSixxFrom: xmlStringOrStream 
	^ self readSixxFrom: xmlStringOrStream context: SixxContext forRead persistentRoot: nil