running
setUp
	originalUseEnvironment := SixxSettings useEnvironment.
	SixxSettings useEnvironment: true.
	self setGMTTimeZone.