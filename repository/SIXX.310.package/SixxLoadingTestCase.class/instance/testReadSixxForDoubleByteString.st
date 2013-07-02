tests
testReadSixxForDoubleByteString
  [ 
  | sixxString string dbStr x |
  dbStr := (Character withValue: 16r300) asString.
  sixxString := '<sixx.object sixx.id="0" sixx.type="String" >' , dbStr
    ,
      '</sixx.object>
'.
  string := Object readSixxFrom: sixxString.
  x := string class.
  self should: [ string size = 1 ].
  self should: [ (string at: 1) = (Character withValue: 16r300) ].
  self should: [ x = Unicode16 ] ]
    on: Error
    do: [ :ex | ex halt ]