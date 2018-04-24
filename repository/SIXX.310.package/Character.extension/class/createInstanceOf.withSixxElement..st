*sixx-instance creation
createInstanceOf: aClass withSixxElement: sixxElement
	| characterData readStream |

	characterData := SixxXmlUtil characterDataFrom: sixxElement.
	(readStream := characterData readStream) skipSeparators.
	"GS Character>>#readFrom: cannot handle self-evaluable Character expressions
	like '(Character value: 123)' or '(123 asCharacter)', so we handle those
	with #evaluate and do a type check after"
	(readStream atEnd not
		and: [readStream peek == $(])
		ifTrue: [| nonByteOrNonXMLChar |
			((nonByteOrNonXMLChar := characterData evaluate) isKindOf: self)
				ifFalse: [self error: self name, ' expected'].
			^ nonByteOrNonXMLChar]
		ifFalse: [
			"otherwise, we can use #readStream:"
			^ self readFrom: readStream]