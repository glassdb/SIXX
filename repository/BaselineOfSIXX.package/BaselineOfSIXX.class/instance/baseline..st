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
                versionString: #'stable';
                repository:
                    'http://seaside.gemtalksystems.com/ss/MetacelloRepository' ];
        yourself.
      spec package: 'SIXX' with: [ spec requires: #('XMLSupport') ].
      spec
        group: 'default' with: #('Core');
        group: 'Core' with: #('SIXX');
        group: 'Tests' with: #() ].
  spec
    for: #(#'gs3.1.x' #'gs3.2.x')
    do: [ spec package: 'SIXX' with: [ spec file: 'SIXX.310' ] ]