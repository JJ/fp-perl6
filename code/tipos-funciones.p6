#!/usr/bin/env perl6

use v6;

sub quita-no-mayúsculas( Str $cadena --> Seq ) {
    return $cadena.comb.grep: * ∉ 'A'..'Z';
}

say quita-no-mayúsculas( "LaTeX" );
say quita-no-mayúsculas( "Learn You a Haskell" );
say &quita-no-mayúsculas.^name

=output
(a e)
(e a r n   o u   a   a s k e l l)
Sub+{Callable[Seq]}
