tests
testReadSixxForSortedCollection
    | sixxString sortedCollection arr |
    sixxString := '<sixx.object sixx.id="72" sixx.name="cllOrarioServizioSaturday" sixx.type="SortedCollection" >
                                                                <sixx.object sixx.id="76" sixx.type="SmallInteger" >30</sixx.object>
                                                                <sixx.object sixx.id="77" sixx.type="SmallInteger" >40</sixx.object>
                                                                <sixx.object sixx.id="78" sixx.type="SmallInteger" >20</sixx.object>
                                                                <sixx.object sixx.id="79" sixx.type="SmallInteger" >50</sixx.object></sixx.object>
'.
    sortedCollection := Object readSixxFrom: sixxString.
    arr := sortedCollection asArray.
    self should: [ arr size = 4 ].
    self should: [ (arr at: 1) = 20 ].
    self should: [ (arr at: 2) = 30 ].
    self should: [ (arr at: 3) = 40 ].
    self should: [ (arr at: 4) = 50 ]