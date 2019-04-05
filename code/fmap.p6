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

multi sub fmap( &f, Nil ) { return Nil };
multi sub fmap( &f, Just $x ) { return Just.new( f( $x() ) ) ;}
multi sub fmap( &f, \x ) { return  f x  };

say fmap * ~ " HEY GUYS IM INSIDE THE JUST", Just.new: "Something serious.";
say fmap * ~ " HEY GUYS IM INSIDE THE JUST", Nil;

=output
Nil
33
