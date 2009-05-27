#!perl -T

use Test::More tests => 2;

BEGIN {
	use_ok( 'Object::Simple::Mixin::AttrOptions' );
	ok( exists &attr_options, 'import attr_options' );
}

diag( "Testing Object::Simple::Mixin::AttrOptions $Object::Simple::Mixin::AttrOptions::VERSION, Perl $], $^X" );
