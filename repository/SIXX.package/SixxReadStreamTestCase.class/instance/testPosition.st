tests
testPosition
	| str stream |
	str := '<?xml version="1.0" encoding="utf-8"?>
<sixx sixx.version="1.0">
	<sixx.object sixx.id="0" sixx.type="String" >a</sixx.object>
	<sixx.object sixx.id="1" sixx.type="String" >b</sixx.object>
	<sixx.object sixx.id="2" sixx.type="String" >c</sixx.object>
</sixx>'.
	stream := SixxReadStream on: str readStream.
	stream next: 3.
	self
		should: [stream position = 3].
	stream position: 1.
	self
		should: [stream next = 'b']