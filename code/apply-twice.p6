#!/usr/bin/env perl6

use v6;

sub apply-twice( &f, \a ) { f( f ( a ) ) }

say apply-twice( * + 3, 10 );
say apply-twice( * ~ " HAHA" , "HEY" );
say apply-twice( "HAHA " ~ *, "HEY" );

=output
16
HEY HAHA HAHA
HAHA HAHA HEY
