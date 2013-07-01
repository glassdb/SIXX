*sixx-printing
sixxContentOn: aStream indent: level context: dictionary 
	aStream nextPut: $(;
	 print: from;
	 nextPutAll: ' to: ';
	 print: to.
	by ~= 1 ifTrue: [aStream nextPutAll: ' by: '; print: by].
	aStream nextPut: $)