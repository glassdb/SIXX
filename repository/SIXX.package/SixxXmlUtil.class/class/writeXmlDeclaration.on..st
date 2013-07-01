actions
writeXmlDeclaration: aString on: wStr
	wStr nextPutAll: SixxConstants current xmlDeclaration.
	2
		timesRepeat: [wStr nextPutAll: GRPlatform current newline].
	wStr nextPutAll: aString.
