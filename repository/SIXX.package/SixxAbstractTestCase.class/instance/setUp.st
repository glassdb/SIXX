running
setUp
	originalUseEnvironment := SixxSettings useEnvironment.
	SixxSettings useEnvironment: false.
	self setGMTTimeZone.