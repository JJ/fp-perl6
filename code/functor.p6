#!/usr/bin/env perl6

use v6;

sub just( \a ) { return { a } };

multi sub maybe( &f, Nil ) { return Nil };
multi sub maybe( &f, &x ) { return just f( x() ) };

say maybe &abs, Nil;
say (maybe &abs, just -33)();

=output
Nil
33
