use Test::More 'no_plan';

BEGIN {
	use_ok( 'Object::Simple::Mixin::AttrOptions', 'attr_options' );
	ok( exists &attr_options, 'import attr_options' );
}
