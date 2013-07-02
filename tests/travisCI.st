"Load and run tests to be performed by TravisCI"
| gitPath |
Transcript cr; show: 'travis---->travisCI.st'.
gitPath := (FileDirectory default directoryNamed: 'git_cache') fullName.

[
"Load SIXX... "
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
