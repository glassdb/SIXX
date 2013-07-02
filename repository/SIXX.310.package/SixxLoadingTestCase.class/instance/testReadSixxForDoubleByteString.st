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
    ifFalse: [ 
      Transcript
        cr;
        show: 'Size: ' , string size printString ].
  self should: [ string size = 1 ].
  (string at: 1) = (Character withValue: 16r300)
    ifFalse: [ 
      Transcript
        cr;
        show: 'Character: ' , (string at: 1) asciiValue printString ].
  self should: [ (string at: 1) = (Character withValue: 16r300) ].
  x = Unicode16
    ifFalse: [ 
      Transcript
        cr;
        show: 'Class: ' , x printString ].
  self should: [ x = Unicode16 ]