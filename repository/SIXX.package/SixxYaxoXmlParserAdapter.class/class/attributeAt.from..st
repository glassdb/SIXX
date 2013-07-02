actions-parse
attributeAt: attributeName from: sixxElement
	^ (sixxElement attributeAt: attributeName)
		ifNotEmptyDo: [:attr| attr ]
		ifEmpty: [ nil ]