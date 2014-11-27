"Load and run tests to be performed by TravisCI"
| gitPath |
Transcript cr; show: 'travis---->travisCI.st'.
gitPath := (FileDirectory default directoryNamed: 'git_cache') fullName.

Gofer new
  package: 'GsUpgrader-Core';
  url: 'http://ss3.gemtalksystems.com/ss/gsUpgrader';
  load.
(Smalltalk at: #GsUpgrader) upgradeGrease.

"Load SIXX... "
GsDeployer deploy: [
  Metacello new
    baseline: 'SIXX';
    repository: 'filetree://', gitPath, '/SIXX/repository';
    load ].

true ifTrue: [
  "Run all tests in image"
  TravisCISuiteHarness
    value: TestCase suite
    value: 'TravisCISuccess.txt'
    value: 'TravisCIFailure.txt'.
] ifFalse: [
  "Run the SIXX tests"
  TravisCIHarness
    value: #( 'BaselineOfSIXX' )
    value: 'TravisCISuccess.txt' 
    value: 'TravisCIFailure.txt'.
].
