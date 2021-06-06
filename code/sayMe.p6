#!/usr/bin/env raku

proto say-me( | ) returns Str {*};

multi  say-me( \a where 1 <= a <= 5 ) returns Str {
    return ( uniname( a.Str ).split(" " )[1]).lc.tc ~ "!";
}
multi say-me( \a ) returns Str { "Not between 1 and 5"}

say-me(3).say;
say-me(33).say;
