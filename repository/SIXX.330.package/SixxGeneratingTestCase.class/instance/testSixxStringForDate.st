tests
testSixxStringForDate
  | expectedStr x |
  expectedStr := '<sixx.object sixx.id="0" sixx.type="Date" >14 May 2002</sixx.object>
'.
  self
    should: [ (x := (Date newDay: 14 month: 'May' year: 2002) sixxString) = expectedStr ]