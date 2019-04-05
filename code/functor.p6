#!/usr/bin/env perl6

use v6;

class Just {
    has &.a;
    method new( $a ) {
        return self.bless( a => {$a} );
    }

    method CALL-ME( |c ) {
        return &!a();
    }

    method gist() { return "Just " ~ &!a() }
}

multi sub maybe( &f, Nil ) { return Nil };
multi sub maybe( &f, Just $x ) { return Just.new( f( $x() ) ) };

my $treinta-y-tres = Just.new( -33 );

say maybe &abs, Nil;
say maybe &abs,  $treinta-y-tres;

=output
Nil
33
