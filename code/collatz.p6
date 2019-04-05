#!/usr/bin/env perl6

use v6;

proto collatz( Int $a --> List ) {*};

multi sub collatz( 1 ) { return [1] }
multi sub collatz( Int $a where $a %% 2 ) { return  collatz( ($a/2).Int ).prepend( $a )}
multi sub collatz( Int $a where not $a %% 2 ) { return collatz( ($a/3).Int + 1 ).prepend($a)}

say collatz 10;
say collatz 30;
