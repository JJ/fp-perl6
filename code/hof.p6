#!/usr/bin/env perl6

use v6;

sub mult-three( \a, \b, \c ) {
    return a * b * c;
}

my &mult-two-with-nine = &mult-three.assuming( *, *, 9);

say mult-two-with-nine 2, 3;

=output
54
