#!/usr/bin/env perl6

sub þor( Int, Int --> Str ) {};
say &þor.^name; # Sub+{Callable[Str]}
say &þor.^mro;
#((Sub+{Callable[Str]}) (Sub) (Routine) (Block) (Code) (Any) (Mu))

=output
Sub+{Callable[Str]}
((Sub+{Callable[Str]}) (Sub) (Routine) (Block) (Code) (Any) (Mu))
