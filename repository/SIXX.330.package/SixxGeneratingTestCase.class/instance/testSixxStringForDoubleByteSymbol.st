tests
testSixxStringForDoubleByteSymbol
  | expectedStr dbStr |
  dbStr := (Character withValue: 16r300) asString.
  expectedStr := '<sixx.object sixx.id="0" sixx.type="Symbol" >' , dbStr
    ,
      '</sixx.object>
'.
  self
    should: [ (Character withValue: 16r300) asSymbol sixxString = expectedStr ]