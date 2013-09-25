*sixx-initializing
initializeFromSixxElement: sixxElement context: aSixxContext
  "override to use #initializeMixedFieldsFromSixxElement:context: if having some inst vars"

  | idx coll |
  coll := (SixxXmlUtil elementsFrom: sixxElement)
    select: [ :elem | (SixxXmlUtil isTextFrom: elem) not ].
  idx := coll size.
  coll reverse
    do: [ :elem | 
      | childInst |
      aSixxContext stack
        add:
          #'block'
            -> [ :objects | 
              | childInst i |
              i := objects removeLast.
              childInst := objects removeLast.
              self at: i put: childInst ].
      aSixxContext stack add: #'ref' -> idx.
      aSixxContext stack
        add:
          #'from'
            ->
              {(self class).
              elem}.
      idx := idx - 1 ]