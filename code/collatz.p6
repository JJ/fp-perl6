#!/usr/bin/env perl6

use v6;

proto collatz( Int $a --> List ) {*};

multi sub collatz( 1 ) { return [1] }
multi sub collatz( Int $a where $a %% 2 ) { return  collatz( ($a/2).Int ).prepend( $a )}
multi sub collatz( Int $a where not $a %% 2 ) { return collatz( $a*3 + 1 ).prepend($a)}

say collatz 10;
say collatz 30;

(1..100) ==> map(  { collatz( $_ ) } ) ==> grep( *.elems > 15 ) ==> my @long-chains;

say @long-chains.elems;

=output
[10 5 2 1]
[30 15 46 23 70 35 106 53 160 80 40 20 10 5 16 8 4 2 1]
66
