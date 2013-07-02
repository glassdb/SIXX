"Load and run tests to be performed by TravisCI"
| gitPath |
Transcript cr; show: 'travis---->travisCI.st'.
gitPath := (FileDirectory default directoryNamed: 'git_cache') fullName.

[
"Update GLASS to 1.0-beta.9.1"
Metacello new
  configuration: 'GLASS';
  repository: 'http://seaside.gemtalksystems.com/ss/MetacelloRepository';
  get.
Metacello new
  configuration: 'GLASS';
  version: '1.0-beta.9.1';
  repository: 'http://seaside.gemtalksystems.com/ss/MetacelloRepository';
  load.

"Load Tode ... "
Metacello new
	baseline: 'SIXX';
  repository: 'filetree://', gitPath, '/SIXX/repository';
  load.
] on: Warning do: [:ex | 
  Transcript cr; show: 'WARNING: ', ex description.
  ex resume: true ].

"Run the Tode tests"
TravisCIHarness
  value: #( 'BaselineOfSIXX' )
  value: 'TravisCISuccess.txt' 
  value: 'TravisCIFailure.txt'.
