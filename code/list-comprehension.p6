#!/usr/bin/env perl6

use v6;

(1..10).map( *²).say;
(1..10).map( *²).grep( * ≥ 12 ).say;

1..10 ==> map( *²) ==> grep( * ≥ 12 ) ==> my @output;

@output.join( " ⬖ ").put;


=output
(1 4 9 16 25 36 49 64 81 100)
(16 25 36 49 64 81 100)
16 ⬖ 25 ⬖ 36 ⬖ 49 ⬖ 64 ⬖ 81 ⬖ 100
