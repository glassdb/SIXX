SIXX [![Build Status](https://travis-ci.org/glassdb/SIXX.png?branch=master)](https://travis-ci.org/glassdb/SIXX)
====

GemStone port of http://www.mars.dti.ne.jp/~umejava/smalltalk/sixx/index.html

This port was forked from SIXX-mu.136 (13 July 2008, 20:40:36).


###  GemStone Installation

Upgrade to GLASS 1.0-beta.9.1, then:

```Smalltalk
Metacello new
    baseline: 'SIXX';
    repository: 'github://glassdb/SIXX:master/repository';
    load.
```

See also: https://github.com/mumez/SIXX
