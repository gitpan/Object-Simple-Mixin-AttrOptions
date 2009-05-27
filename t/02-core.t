use Test::More  'no_plan';
use strict;
use warnings;

use lib 't/02-core';

use T2;
{
    my $t = T2->new;
    my $attr_options = $t->attr_options;
    
    is_deeply(
        $attr_options,
        {
            T1 => {
                m1 => { default => 'm1', read_only => 1 },
                m2 => { default => 'm2' },
            },
            T2 => {
                m3 => { default => 'm3' }
            }
        }, 
        'attr options'
    );
}

