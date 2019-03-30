*sixx-private
sixxIndexFieldsOn: aStream indent: level context: dictionary
	self size = 0 ifTrue: [^self].
	aStream nextPutAll: GRPlatform current newline.
	self sixxDo: 
			[:each | 
			each 
				sixxOn: aStream
				indent: level
				context: dictionary]

