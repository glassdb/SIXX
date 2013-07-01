*sixx-instance creation
readShortHexFrom: aStream
	| sz inst |
	sz := aStream size // 2.
	inst := self new: sz.
	1 to: sz do: [:idx | 
		inst at: idx put: (Integer readShortHexFrom: (aStream next: 2) readStream)
	].
	^ inst