*sixx-instance creation
readSixxFromSixxElement: sixxElement context: aSixxContext 
	| rootClass typeAttr |
	typeAttr := self typeFromSixxElement: sixxElement.
	^typeAttr isNil
		ifTrue: [(self includesRefInstanceFromSixxElement: sixxElement context: aSixxContext)
				ifTrue: [ self refInstanceFromSixxElement: sixxElement context: aSixxContext ]]
		ifFalse: [
			rootClass := self classFromSixxElement: sixxElement context: aSixxContext.
			rootClass isNil
				ifFalse: [ | stack objects |
					stack := aSixxContext stack.
					objects := OrderedCollection with: nil.
					stack add: #from -> {rootClass. sixxElement.}.
					[ stack isEmpty ]
						whileFalse: [ | assoc |
							assoc := stack removeLast.
							assoc key == #from
								ifTrue: [ (assoc value at: 1) fromSixxElement: (assoc value at: 2) context: aSixxContext ].
							assoc key == #block
								ifTrue: [ assoc value value: objects ].
							"only initialize and ref should push values onto objects as they are the two possible results of #from"
							assoc key == #ref
								ifTrue: [ objects add: assoc value ].
							assoc key == #initialize
								ifTrue: [ | obj eid |
									obj := assoc value at: 1.
									eid := assoc value at: 2.
									obj sixxInitialize.
									obj := obj sixxReadValue.
									aSixxContext at: eid put: obj.
									objects add: obj ]].
					^objects removeLast ]]