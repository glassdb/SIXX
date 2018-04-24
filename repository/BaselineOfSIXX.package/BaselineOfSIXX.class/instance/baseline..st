baseline
baseline: spec
  <baseline>
  spec
    for: #'gemstone'
    do: [ 
      spec
        configuration: 'XMLParser'
          with: [ 
              spec
                versionString: #'stable';
                repository:
                    'http://smalltalkhub.com/mc/PharoExtras/XMLParser/main' ];
        yourself.
      spec package: 'SIXX' with: [ spec requires: #('XMLParser') ].
      spec
        group: 'default' with: #('Core');
        group: 'Core' with: #('SIXX');
        group: 'Tests' with: #() ].
  spec
    for: #(#'gs3.x')
    do: [ spec package: 'SIXX' with: [ spec file: 'SIXX.310' ] ]