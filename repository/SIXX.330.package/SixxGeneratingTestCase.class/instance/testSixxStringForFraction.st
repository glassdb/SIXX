tests
testSixxStringForFraction
  "SixxGeneratingTestCase debug: #testSixxStringForFraction"

  | expectedStr x |
  expectedStr := '<sixx.object sixx.id="0" sixx.type="Fraction" >(3/4)</sixx.object>
'.
  self should: [ (x := (3 / 4) sixxString) = expectedStr ]