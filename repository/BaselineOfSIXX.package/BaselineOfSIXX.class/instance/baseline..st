baseline
baseline: spec
  <baseline>
  spec
    for: #'gemstone'
    do: [ 
      spec
        baseline: 'XMLParser'
          with: [ spec repository: 'github://GsDevKit/XML-XMLParser:gemstone/filetree' ];
        yourself.
      spec package: 'SIXX' with: [ spec requires: #('XMLParser') ].
      spec
        group: 'default' with: #('Core');
        group: 'Core' with: #('SIXX');
        group: 'Tests' with: #() ].
  spec
    for: #(#'gs3.x')
    do: [ spec package: 'SIXX' with: [ spec file: 'SIXX.310' ] ].
  spec
    for: #(#'gs3.3.x' #'gs3.4.x' #'gs3.5.x' #'gs3.6.x')
    do: [ spec package: 'SIXX' with: [ spec file: 'SIXX.330' ] ].
  spec
    for: #(#'gs3.6.x')
    do: [ 
      spec package: 'SIXX' with: [ spec includes: 'SIXX36x' ].
      spec package: 'SIXX36x' with: [ spec requires: 'SIXX' ] ]