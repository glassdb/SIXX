*sixx-private
fromSixxElement: sixxElement context: aSixxContext 
	(self includesRefInstanceFromSixxElement: sixxElement context: aSixxContext)
		ifTrue: [ | obj |
			obj := self refInstanceFromSixxElement: sixxElement context: aSixxContext.
			aSixxContext stack add: #ref -> obj ]
		ifFalse: [ self newInstanceFromSixxElement: sixxElement context: aSixxContext ]