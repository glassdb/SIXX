private
writeUnicodeChar: aCharacter on: aWriteStream 
	self settings useNCR
		ifTrue: [
			aWriteStream
				nextPutAll: '&#';
				print: (SixxPortableUtil charCodeOf: aCharacter);
				nextPut: $;]
		ifFalse: [aWriteStream nextPut: aCharacter]