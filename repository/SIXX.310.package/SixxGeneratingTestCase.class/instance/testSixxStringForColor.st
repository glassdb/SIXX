tests
testSixxStringForColor
  | expectedStr x |
  expectedStr := ((System stoneVersionAt: 'gsVersion') beginsWith: '3.2')
    ifTrue: [ '<sixx.object sixx.id="0" sixx.type="Color" >(Color r: 0.0000000000000000E00 g: 0.0000000000000000E00 b: 1.0000000000000000E00)</sixx.object>
' ]
    ifFalse: [ 
      '<sixx.object sixx.id="0" sixx.type="Color" >(Color r: 0.0000000000000000E+00 g: 0.0000000000000000E+00 b: 1.0000000000000000E+00)</sixx.object>
' ].
  self assert: (x := Color blue sixxString) = expectedStr