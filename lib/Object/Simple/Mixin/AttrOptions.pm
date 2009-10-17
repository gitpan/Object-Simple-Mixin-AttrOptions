package Object::Simple::Mixin::AttrOptions;
use warnings;
use strict;

our $VERSION = '0.0301';

# get attribute options
sub attr_options {
    my $invocant = shift;
    my $class = ref $invocant || $invocant;
    return $Object::Simple::META->{$class}{attr_options} || undef;
}

=head1 NAME

Object::Simple::Mixin::AttrOptions - Mixin to get attr options [DISCOURAGED]

=head1 CAUTION

This module is discouraged now, because I feel attribute is not explicit for lightweight language.

I will not maintain this module.
=head1 VERSION

Version 0.0301

=cut

=head1 SYNOPSIS

    ### Book.pm
    package Book;
    use Object::Simple(
        mixins => ['Object::Simple::Mixin::AttrOptions']
    );
    
    sub title  : Attr { default => 1, read_only => 1 }
    sub author : Attr { default => 2, chained => 1 }
    
    Object::Simple->build_class;
    
    ### using Book.pm
    use Book;
    
    my $book = Book->new;
    my $attr_options = $book->attr_options;
    
    # or
    
    my $attr_options = Book->attr_options;

=head1 EXPORT

attr_options

=head1 FUNCTIONS

=head2 attr_options

get attribute options 

    my $attr_options = $book->attr_options;

attr_options return hash reference like this.

    {
        title  => {default => 1, read_only => 1},
        author => {default => 2}
    }

=head1 AUTHOR

Yuki Kimoto, C<< <kimoto.yuki at gmail.com> >>

=head1 BUGS

Please report any bugs or feature requests to C<bug-object-simple-mixin-attroptions at rt.cpan.org>, or through
the web interface at L<http://rt.cpan.org/NoAuth/ReportBug.html?Queue=Object-Simple-Mixin-AttrOptions>.  I will be notified, and then you'll
automatically be notified of progress on your bug as I make changes.




=head1 SUPPORT

You can find documentation for this module with the perldoc command.

    perldoc Object::Simple::Mixin::AttrOptions


You can also look for information at:

=over 4

=item * RT: CPAN's request tracker

L<http://rt.cpan.org/NoAuth/Bugs.html?Dist=Object-Simple-Mixin-AttrOptions>

=item * AnnoCPAN: Annotated CPAN documentation

L<http://annocpan.org/dist/Object-Simple-Mixin-AttrOptions>

=item * CPAN Ratings

L<http://cpanratings.perl.org/d/Object-Simple-Mixin-AttrOptions>

=item * Search CPAN

L<http://search.cpan.org/dist/Object-Simple-Mixin-AttrOptions/>

=back


=head1 ACKNOWLEDGEMENTS


=head1 COPYRIGHT & LICENSE

Copyright 2009 Yuki Kimoto, all rights reserved.

This program is free software; you can redistribute it and/or modify it
under the same terms as Perl itself.


=cut

1; # End of Object::Simple::Mixin::AttrOptions
