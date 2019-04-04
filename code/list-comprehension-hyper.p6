#!/usr/bin/env perl6

use v6;

((1..10) »**» 2 ).duckmap: -> $x where * ≥ 12 { $x.say };

=output
16
25
36
49
64
81
100

