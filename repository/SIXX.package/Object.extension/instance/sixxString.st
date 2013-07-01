*sixx-printing
sixxString
	| wStr |
	wStr := (String new: 128) writeStream.
	self sixxOn: wStr.
	^wStr contents