tests
testReadSixxForDoubleByteString
  | sixxString string dbStr x |
  dbStr := (Character withValue: 16r300) asString.
  sixxString := '<sixx.object sixx.id="0" sixx.type="String" >' , dbStr
    ,
      '</sixx.object>
'.
  string := Object readSixxFrom: sixxString.
  x := string class.
  string size = 1
    ifFalse: [ self halt: '1' ].
  self should: [ string size = 1 ].
  (string at: 1) = (Character withValue: 16r300)
    ifFalse: [ self halt: '1' ].
  self should: [ (string at: 1) = (Character withValue: 16r300) ].
  x = Unicode16
    ifFalse: [ self halt: '1' ].
  self should: [ x = Unicode16 ]