actions
contentsWithStartTagNamed: tagName do: block 
	"backward compatibility"
	| wStr |
	wStr := (String new: 16) writeStream.
	self writeStartTagNamed: tagName attributesDo: block on: wStr.
	^ wStr contents