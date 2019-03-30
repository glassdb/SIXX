tests
testSixxInitialize
  "self debug: #testSixxInitialize"

  | obj readObject |
  obj := SixxMockObjectInitializingOnRead new.
  obj att1: 1.
  obj att2: 2.
  obj cache1: 'cache1'.
  obj cache2: 'cache2'.
  readObject := Object readSixxFrom: obj sixxString.
  self assert: readObject att1 equals: 1.
  self assert: readObject att2 equals: 2.
  self assert: readObject cache1 equals: 1234567.
  self assert: readObject cache2 equals: 'this is cache2'