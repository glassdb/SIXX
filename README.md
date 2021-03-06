SIXX [![Build Status](https://github.com/glassdb/SIXX/actions/workflows/ci.yml/badge.svg?branch=master)](https://github.com/glassdb/SIXX/actions/workflows/ci.yml)
====

GemStone port of http://www.mars.dti.ne.jp/~umejava/smalltalk/sixx/index.html

This port was forked from SIXX-mu.136 (13 July 2008, 20:40:36).


###  GemStone Installation

```Smalltalk
Gofer new
  package: 'GsUpgrader-Core';
  url: 'http://ss3.gemtalksystems.com/ss/gsUpgrader';
  load.
(Smalltalk at: #GsUpgrader) upgradeGLASS1.

Metacello new
    baseline: 'SIXX';
    repository: 'github://glassdb/SIXX:master/repository';
    load.
```

### GsDevKit_home installation (tODE)
```
createStone sixx_353 3.5.3
devKitCommandLine todeIt sixx_353 << EOF
  # tODE commands
  project install --url=http://gsdevkit.github.io/GsDevKit_home/SIXX.ston
  project load SIXX
  bu backup sixx.dbf
EOF
```


### Examples

```Smalltalk
  "Create SIXX as String"
  #( 1 2 3) sixxString.

  "Create SIXX on Stream"
  | strm |
  strm := WriteStream on: String new.
  #( 1 2 3) sixxOn: strm.

  "Create SIXX for a large object"
  | strm |
  MCPlatformSupport commitOnAlmostOutOfMemoryDuring: [
    UserGlobals at: #'MY_SIXX_ROOT_ARRAY' put: Array new.
    System commitTransaction.
    strm := WriteStream on: String new.
    #( 1 2 3) sixxOn: strm persistentRoot: (UserGlobals at: #'MY_SIXX_ROOT_ARRAY')
  ].
  strm
  
  "Create object from SIXX string or stream"
  | obj |
  obj := Object readSixxFrom: #( 1 2 3) sixxString.

  "Create a large object from SIXX string or stream"
  | obj |
  MCPlatformSupport commitOnAlmostOutOfMemoryDuring: [
    UserGlobals at: #'MY_SIXX_ROOT_ARRAY' put: Array new.
    System commitTransaction.
    obj := Object readSixxFrom: #( 1 2 3) sixxString readStream
      context: SixxContext forRead
      persistentRoot: (UserGlobals at: #'MY_SIXX_ROOT_ARRAY')
  ].
  obj
```
See also: https://github.com/mumez/SIXX
