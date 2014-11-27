*sixx-private
includesRefInstanceFromSixxElement: sixxElement context: aDictionary
  | idref |
  idref := self idrefFromSixxElement: sixxElement.
  ^ idref isEmptyOrNil
    ifTrue: [ false ]
    ifFalse: [ aDictionary includesKey: idref ]