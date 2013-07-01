*sixx-private
writeSixxAttributeOn: aStream idref: idrefString

	SixxXmlUtil writeAttribute: SixxConstants current idrefTagName value: idrefString on: aStream.