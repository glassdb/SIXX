writing
xmlDeclaration
	self stream 
		nextPutAll: SixxConstants current xmlDeclaration; 
		nextPutAll: GRPlatform current newline