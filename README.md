SIXX [![Build Status](https://travis-ci.org/glassdb/SIXX.png?branch=master)](https://travis-ci.org/glassdb/SIXX)
====

GemStone port of http://www.mars.dti.ne.jp/~umejava/smalltalk/sixx/index.html

This port was forked from SIXX-mu.136 (13 July 2008, 20:40:36).


###  GemStone Installation

```Smalltalk
Gofer new
  package: 'GsUpgrader-Core';
  url: 'http://ss3.gemtalksystems.com/ss/gsUpgrader';
  load.
(Smalltalk at: #GsUpgrader) upgradeGrease.

Metacello new
    baseline: 'SIXX';
    repository: 'github://glassdb/SIXX:master/repository';
    load.
```

### Examples

```Smalltalk
  "Create SIXX as String"
  #( 1 2 3) sixxString.

  "Create SIXX on Stream"
  | strm |
  strm := WriteStream on: String new.
  #( 1 2 3) sixxOn: strm.

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
