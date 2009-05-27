package T2;
use Object::Simple(
    base => 'T1',
    mixin => 'Object::Simple::Mixin::AttrOptions'
);

sub m3 : Attr { default => 'm3' }

Object::Simple->end;
