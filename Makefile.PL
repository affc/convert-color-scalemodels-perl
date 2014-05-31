use 5.006;
use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME                => 'Convert::Color::ScaleModels',
    AUTHOR              => q{Ari Constancio <affc@cpan.org>},
    VERSION_FROM        => 'lib/Convert/Color/ScaleModels.pm',
    ABSTRACT_FROM       => 'lib/Convert/Color/ScaleModels.pm',
    ($ExtUtils::MakeMaker::VERSION >= 6.3002
      ? ('LICENSE'=> 'perl')
      : ()),
    PL_FILES            => {},
    PREREQ_PM => {
        'Test::More' => 0,
        'Carp' => 0,
    },
    META_MERGE => {
    	'meta-spec' => { version => 2 },
     	resources => {
         	repository => {
           	type => 'git',
           	url  => 'https://github.com/affc/convert-color-scalemodels-perl.git',
           	web  => 'https://github.com/affc/convert-color-scalemodels-perl',
     		},
	},
    },
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'Convert-Color-ScaleModels-*' },
);
