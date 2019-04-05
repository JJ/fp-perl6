#!/usr/bin/env perl6

use v6;

proto sub lucky (Int \a --> Str ) { *}
multi sub lucky ( 7 ) {  "LUCKY NUMBER SEVEN!" }
multi sub lucky ( $x where * ≠ 7 ) { "Sorry, you're out of luck, pal!" };
				     
say lucky 7 ;
say lucky 33;

=output
LUCKY NUMBER SEVEN!
Sorry, you're out of luck, pal!


