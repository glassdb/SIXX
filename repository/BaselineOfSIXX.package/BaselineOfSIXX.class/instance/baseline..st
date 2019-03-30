baseline
baseline: spec
  <baseline>
  spec
    for: #'gemstone'
    do: [ 
      spec
        configuration: 'XMLSupport'
          with: [ 
              spec
                versionString: '1.2.2.1';
                repository:
                    'http://seaside.gemtalksystems.com/ss/MetacelloRepository' ];
        yourself.
      spec package: 'SIXX' with: [ spec requires: #('XMLSupport') ].
      spec
        group: 'default' with: #('Core');
        group: 'Core' with: #('SIXX');
        group: 'Tests' with: #() ].
  spec
    for: #(#'gs3.x')
    do: [ spec package: 'SIXX' with: [ spec file: 'SIXX.310' ] ].
  spec
    for: #(#'gs3.3.x' #'gs3.4.x' #'gs3.5.x' #'gs3.6.x')
    do: [ spec package: 'SIXX' with: [ spec file: 'SIXX.330' ] ]