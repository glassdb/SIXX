"Load and run tests to be performed by TravisCI"
| gitPath |
Transcript cr; show: 'travis---->travisCI.st'.
gitPath := (FileDirectory default directoryNamed: 'git_cache') fullName.

"Update GLASS to 1.0-beta.9.1"
Metacello image
  project: 'GLASS';
  get.
Metacello image
  project: 'GLASS';
  version: '1.0-beta.9.1';
  load.

"Load Tode ... "
Metacello new
	baseline: 'SIXX';
  repository: 'filetree://', gitPath, '/SIXX/repository';
  load.

"Run the Tode tests"
TravisCIHarness
  value: #( 'BaselineOfSIXX' )
  value: 'TravisCISuccess.txt' 
  value: 'TravisCIFailure.txt'.
