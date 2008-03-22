use ExtUtils::MakeMaker;
use strict;

WriteMakefile (
    NAME            => 'File::Fetch',
    VERSION_FROM    => 'lib/File/Fetch.pm', # finds $VERSION
    dist            => { COMPRESS => 'gzip -9f', SUFFIX => 'gz' },
    PREREQ_PM       => { 
                        'IPC::Cmd'                  => 0.41, # ipc::open3 bugfix
                        'Test::More'                => 0, 
                        'File::Copy'                => 0,
                        'File::Spec'                => 0.82,
                        'File::Path'                => 0,
                        'File::Basename'            => 0,
                        'Params::Check'             => 0.07,
                        'Module::Load::Conditional' => 0.04,
                        'Locale::Maketext::Simple'  => 0,
                    },
    INSTALLDIRS     => ( $] >= 5.009005 ? 'perl' : 'site' ),
    AUTHOR          => 'Jos Boumans <kane[at]cpan.org>',
	ABSTRACT        => 'Generic file fetching code'
);     
