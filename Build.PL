use strict;
use warnings;
use 5.12.0;
use Module::Build::WithXSpp;

my $build = Module::Build::WithXSpp->new(
    module_name         => 'Compress::DSRC',
    license             => 'perl',
    dist_author         => q{Jeremy Volkening <jdv*at*base2bio*dot*com>},
    dist_version        => '0.001',
    build_requires => { 'Test::More' => 0, },
    extra_typemap_modules => {
        'ExtUtils::Typemaps::ObjectMap' => '0',
    },
    extra_compiler_flags => [qw/-O2 -m64 -DNDEBUG -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE -Wall -shared -fPIC -DUSE_BOOST_THREAD -Wno-unused-variable -std=c++11/],
    extra_linker_flags => [qw/-lboost_thread -lboost_system -lpthread/ ],
    meta_merge => {
        resources => {
            repository => 'https://github.com/jvolkening/p5-Compress-DSRC'
        }
    },
);
$build->create_build_script;
