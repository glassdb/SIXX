tests
testRenamedReadFailed
	"SixxShapeChangerTestCase debug: #testRenamedReadFailed"
	| data oldSixx obj |
	data := Array with: 1 with:2 with: (Array with:1 with:3 with:1).
	oldSixx := data sixxString copyReplaceAll: 'SmallInteger' with: 'SmallIntegerOLD'.
	obj := [Object readSixxFrom: oldSixx] on: SixxClassNotFound do: [:ex | ex resume ].
	self shouldnt: [obj = data].
	self should: [obj = #(nil nil #(nil nil nil))]