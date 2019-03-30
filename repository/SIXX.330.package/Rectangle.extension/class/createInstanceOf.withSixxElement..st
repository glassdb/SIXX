*sixx-instance creation
createInstanceOf: aClass withSixxElement: sixxElement 
	| readStr origin corner |

	"For old format"
	(SixxXmlUtil elementsFrom: sixxElement ) isEmpty ifFalse: [
		^super createInstanceOf: aClass withSixxElement: sixxElement
	].

	readStr := ReadStream on: (SixxXmlUtil characterDataFrom: sixxElement).
	origin := ((readStr upTo: $@) asNumber) @ (readStr upTo: Character space) asNumber.
	readStr upTo: $:; upTo: Character space. "For portability"
	corner := ((readStr upTo: $@) asNumber) @ (readStr upToEnd) asNumber.
	^origin corner: corner
