use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'Object::Simple::Mixin::AttrOptions',
    license             => 'perl',
    dist_author         => 'Yuki Kimoto <kimoto.yuki@gmail.com>',
    dist_version_from   => 'lib/Object/Simple/Mixin/AttrOptions.pm',
    build_requires => {
        'Test::More' => 0,
        'Object::Simple' => 0.0201
    },
    add_to_cleanup      => [ 'Object-Simple-Mixin-AttrOptions-*' ],
    create_makefile_pl => 'traditional',
);

$builder->create_build_script();
