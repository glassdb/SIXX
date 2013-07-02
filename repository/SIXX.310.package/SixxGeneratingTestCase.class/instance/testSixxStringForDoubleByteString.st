tests
testSixxStringForDoubleByteString
  | expectedStr dbStr |
  dbStr := (Character withValue: 16r300) asString.
  expectedStr := '<sixx.object sixx.id="0" sixx.type="String" >' , dbStr
    ,
      '</sixx.object>
'.
  self
    should: [ (Character withValue: 16r300) asString sixxString = expectedStr ]