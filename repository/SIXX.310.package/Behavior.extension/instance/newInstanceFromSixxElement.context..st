*sixx-private
newInstanceFromSixxElement: sixxElement context: aSixxContext
  | class formatter inst elemId assoc |
  class := self classFromSixxElement: sixxElement context: aSixxContext.
  class isNil
    ifTrue: [ 
      aSixxContext stack add: #'ref' -> nil.
      ^ self ].
  aSixxContext stack add: (assoc := #'initialize' -> nil).
  elemId := self idFromSixxElement: sixxElement.
  formatter := self
    formatterFromSixxElement: sixxElement
    for: class
    context: aSixxContext.
  formatter isNil
    ifTrue: [ 
      inst := class createInstanceOf: class withSixxElement: sixxElement.
      aSixxContext at: elemId put: inst.
      inst initializeFromSixxElement: sixxElement context: aSixxContext ]
    ifFalse: [ 
      inst := formatter createInstanceOf: class withSixxElement: sixxElement.
      aSixxContext at: elemId put: inst.
      formatter
        initialize: inst
        fromSixxElement: sixxElement
        context: aSixxContext ].
  assoc
    value:
      {inst.
      elemId}