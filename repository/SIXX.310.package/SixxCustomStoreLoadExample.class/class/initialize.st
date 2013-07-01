class initialization
initialize
	"SixxCustomStoreLoadExampleClass initialize"
	instances := OrderedCollection new.
	cachedData := self nonCacheableData. "some unstorable cache data"