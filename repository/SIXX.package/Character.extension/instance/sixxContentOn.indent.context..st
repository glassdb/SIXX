*sixx-printing
sixxContentOn: aStream indent: level context: dictionary
	| cp |
	(cp := self codePoint) <= 16rFF
		ifTrue: [ aStream nextPutAll: self printString ]
		ifFalse: [
			aStream nextPut: $$.
			cp <= 16rFFFF
				ifTrue: [
					aStream nextPut: (Character value: cp >> 8).
					aStream nextPut: (Character value: (cp bitAnd: 16rFF))]
				ifFalse: [
					aStream nextPut: (Character value: ((cp >> 24) bitAnd: 16rFF)).
					aStream nextPut: (Character value: ((cp >> 16) bitAnd: 16rFF)).
					aStream nextPut: (Character value: ((cp >> 8) bitAnd: 16rFF)).
					aStream nextPut: (Character value: (cp bitAnd: 16rFF))]]