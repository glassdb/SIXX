running
deleteFiles

	#('obj.sixx' 'obj2.sixx') do: [:filename |
		FileDirectory default deleteFileNamed: filename ifAbsent: [] ].