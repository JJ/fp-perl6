#!/usr/bin/env perl6

use v6;

# Taken from monads.pl in perl6/mu; originally by Larry Wall
# Definition:
#   Haskell:   IO a
#   Perl 6:    { a }

# return :: (Monad m) => a -> m a
sub mreturn($a --> Code ) { return { $a } }

# (>>=) :: (Monad m) => m a -> (a -> m b) -> m b
sub mbind(
    Code $ma,        # m a
    Code $f          # (a -> m b)
	 --> Code
) {
  return {
    my $a  = $ma();    # Run m a, yielding a
    my $mb = $f($a);   # Give $f the a, yielding m b
    $mb();             # Return b
  };
}

sub sequence_(*@actions where {$_.all ~~ Code} ) {
  return {
    $_() for @actions;
    Nil;
  };
}

# getLine :: IO String
# getLine = ...implemented by the compiler...
sub getLine() {
  return {
    my $line = $*IN.get;
    $line;
  };
}

# putStrLn :: String -> IO ()
# putStrLn = ...implemented by the compiler...
sub putStrLn(Str $x) { return { say $x; Nil } }


# Now some example code:
# This is the one that gets run. 
{
  say "Write a couple of lines here ->";
  my $line_from_user = getLine();
  # Nothing is read yet.
  my $echo = mbind($line_from_user, -> $x { putStrLn($x) });
  # Nothing is read or printed yet.
  my @actions = (getLine(), $echo);
  # Again, nothing printed yet.
  my $both = sequence_(@actions);
  # Only now there're two lines read from the user, and the second one is
  # echoed back.
  $both();
}
