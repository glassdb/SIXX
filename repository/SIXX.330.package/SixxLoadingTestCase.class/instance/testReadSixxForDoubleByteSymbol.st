tests
testReadSixxForDoubleByteSymbol
  | sixxString string dbStr |
  dbStr := (Character withValue: 16r300) asString.
  sixxString := '<sixx.object sixx.id="0" sixx.type="Symbol" >' , dbStr
    ,
      '</sixx.object>
'.
  string := Object readSixxFrom: sixxString.
  self should: [ string size = 1 ].
  self should: [ (string at: 1) = (Character withValue: 16r300) ].
  self should: [ string class = DoubleByteSymbol ]