#!/usr/bin/env perl6

proto sub infix:<≈> ( | --> Bool) {*}

multi sub infix:<≈> ( Int $lhs, Int $rhs --> Bool) { return True if abs( $lhs - $rhs) ≤ 1 }

say "Casi " if 3 ≈ 2 ;


=output
Casi

