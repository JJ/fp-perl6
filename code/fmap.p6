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

my \inside = * ~ " HEY GUYS IM INSIDE THE JUST";
say fmap inside, Just.new: "Something serious.";
say fmap inside, Nil;
say fmap inside, 33;

=output
Just Something serious. HEY GUYS IM INSIDE THE JUST
Nil
33 HEY GUYS IM INSIDE THE JUST
