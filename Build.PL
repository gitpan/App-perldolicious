use Module::Build;

Module::Build->new(
    module_name       => 'App::perldolicious',
    license           => 'perl',
    dist_version_from => 'bin/perldolicious',
    create_license    => 1,
    create_readme     => 1,
    script_files      => ['bin/perldolicious'],
    requires          => {
        'Mojolicious'         => '4.07',
        'Module::CoreList'    => '2.91',
        'Module::Path'        => '0.09',
        'Pod::Cpandoc'        => '0.15',
        'IO::Zlib'            => '1.10',
    },
    meta_merge => {
        resources => {
            homepage => 'https://github.com/Syaltut/perl-App-perldolicious',
            repository =>
              'git://github.com/Syaltut/perl-App-perldolicious.git',
        }
      }

)->create_build_script;
