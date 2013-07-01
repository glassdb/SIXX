actions
contentsWithEndTagNamed: tagName
	| wStr |
	wStr := (String new: 16) writeStream.
	self writeEndTagNamed: tagName on: wStr.
	^wStr contents