override hooks
initialize: aBag fromSixxElement: sixxElement context: aSixxContext
	"override"

	self pairs: (SixxXmlUtil elementsFrom: sixxElement) reverse
		do: [:countElement :valueElement | 
			aSixxContext stack add: #block -> [:objects | | value count |
				count := objects removeLast.
				value := objects removeLast.
				aBag add: value withOccurrences: count ].
			aSixxContext stack add: #from -> {self class. valueElement.}.
			aSixxContext stack add: #from -> {self class. countElement.} ].
