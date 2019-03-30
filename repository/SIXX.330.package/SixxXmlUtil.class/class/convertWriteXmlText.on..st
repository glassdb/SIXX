private
convertWriteXmlText: aString on: aWriteStream
  | cDict |
  cDict := self convertCharDict.
  ^ aWriteStream
    nextPutAll:
      (String
        streamContents: [ :stream | 
          aString
            do: [ :eachChar | 
              | val |
              val := SixxPortableUtil charCodeOf: eachChar.
              val >= 127
                ifTrue: [ stream nextPut: eachChar ]
                ifFalse: [ 
                  | conv |
                  conv := cDict at: val ifAbsent: [  ].
                  conv isNil
                    ifTrue: [ stream nextPut: eachChar ]
                    ifFalse: [ stream nextPutAll: conv ] ] ] ])
        encodeAsUTF8 asUnicodeString