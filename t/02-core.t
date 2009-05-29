use Test::More 'no_plan';
use strict;
use warnings;

use lib 't/02-core';

use T1;
{
    my $t = T1->new;
    my $attr_options = $t->attr_options;
    
    is_deeply(
        $attr_options,
        {
            m1 => { default => 'm1', read_only => 1 },
            m2 => { default => 'm2' },
        },
        'attr options from object'
    );
    
    is_deeply(
        T1->attr_options,
        {
            m1 => { default => 'm1', read_only => 1 },
            m2 => { default => 'm2' },
        },
        'attr options form class'        
    );
}
