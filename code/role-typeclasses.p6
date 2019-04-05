#!/usr/bin/env perl6

role CasiEq {
    method  casi-igual( \rhs --> Bool) {...}
    method  casi-diferente( \rhs --> Bool) {...}
}
class CasiEqInt does CasiEq {
    has Int $.n;
    method casi-igual ( \rhs --> Bool) { return True if abs($!n - rhs) ≤ 1 }
    method casi-diferente ( \rhs --> Bool) { True unless abs($!n - rhs) ≤ 1}
    method Numeric( --> Numeric:D ) { return $!n }
}
my $n1 := CasiEqInt.new( n => 1 );
my $n2 := CasiEqInt.new( n => 2 );
say "Casi" if $n1.casi-igual($n2);


=output
Casi

