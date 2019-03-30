private-initialize
initConvertCharDict
	convertCharDict := Dictionary new.
	0 to: 47 do: [:each | convertCharDict at: each put: '&#', each asString, ';'].
	convertCharDict 
		at: $& asciiValue put: '&amp;';
		at: $< asciiValue put: '&lt;';
		at: $> asciiValue put: '&gt;';
		at: $' asciiValue put: '&apos;';
		at: $" asciiValue put: '&quot;'.
	convertCharDict 
		removeKey: Character space asciiValue;
		removeKey: Character tab asciiValue;
		removeKey: Character cr asciiValue;
		removeKey: Character lf asciiValue.
	convertCharDict 
		removeKey: $/ asciiValue;
		removeKey: $+ asciiValue;
		removeKey: $- asciiValue;
		removeKey: $. asciiValue.