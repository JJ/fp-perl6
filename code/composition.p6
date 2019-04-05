#!/usr/bin/env perl6

use v6;

# map (negate . abs) [5,-3,-6,7,-3,2,-19,24]
say map( { ( { - $_ } ∘ &abs)($_) },  [5,-3,-6,7,-3,2,-19,24]) 

=output
(-5 -3 -6 -7 -3 -2 -19 -24)

