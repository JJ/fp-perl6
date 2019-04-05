#!/usr/bin/env perl6

role CasiEq {
    method postfix:<≅> ( \rhs --> Bool) {...}
    method postfix:<≆> ( \rhs --> Bool) {...}
}

class CasiEqInt does CasiEq {
    has $.n;
    method postfix:<≅> ( \rhs --> Bool) { True if abs($!n - rhs) ≤ 1 }
    method postfix:<≆> ( \rhs --> Bool) { True unless abs($!n - rhs) ≤ 1}
}

my $n1 := CasiEqInt.new( n => 1 );
my $n2 := CasiEqInt.new( n => 2 );

say "Casi " if $n1 ≆ $n2;


=output

