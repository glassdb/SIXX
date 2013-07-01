running
setUp

	super setUp.
	savedClassResolver := SixxClassResolver default.
	SixxClassResolver default: SixxClassResolver new.