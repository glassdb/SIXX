*sixx31x
initDefault
  "self initialize"

  | shapeChangers |
  shapeChangers := Dictionary new.
  shapeChangers at: #'True' put: Boolean.
  shapeChangers at: #'False' put: Boolean.
  shapeChangers at: #'Semaphore' put: TransientSemaphore.
  shapeChangers at: #'BlockContext' put: ExecutableBlock.
  default := self new
    putShapeChangers: shapeChangers
      in: SixxPortableUtil defaultEnvironmentQualifier;
    yourself
