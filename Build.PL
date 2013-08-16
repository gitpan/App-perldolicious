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
        'Pod::Cpandoc'        => '0.15',
        'IO::Zlib'            => '1.10',
        'IPC::System::Simple' => '1.21',
    },
    meta_merge => {
        resources => {
            homepage => 'https://github.com/Syaltut/perl-App-perldolicicous',
            repository =>
              'https://github.com/Syaltut/perl-App-perldolicicous.git',
        }
      }

)->create_build_script;
