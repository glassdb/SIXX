actions
contentsWithEmptyTagNamed: tagName do: block 
	| wStr |
	wStr := (String new: 16) writeStream.
	self writeEmptyTagNamed: tagName attributesDo: block on: wStr.
	^ wStr contents