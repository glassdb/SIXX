*sixx-private
sixxInstVarNamed: varName value: varValue on: aStream indent: level context: dictionary 
	"override if you wish"
	((self sixxIgnorableInstVarNames collect: [:each | each asString]) includes: varName asString) ifTrue: [^ self].
	(((self sixxNonReferencableInstVarNames collect: [:each | each asString]) includes: varName asString)
			and: [varValue notNil])
		ifTrue: [^ varValue
				sixxNoRefOn: aStream
				name: varName
				indent: level
				context: dictionary].
	varValue
		sixxOn: aStream
		name: varName
		indent: level
		context: dictionary