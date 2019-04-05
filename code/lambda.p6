#!/usr/bin/env perl6

use v6;

# zipWith (\a b -> (a * 30 + 3) / b) [5,4,3,2,1] [1,2,3,4,5]  
say ((1..5) Z (5...1)).map( -> (\a, \b) { (a*30+3)/b });

=output
(6.6 15.75 31 61.5 153)
