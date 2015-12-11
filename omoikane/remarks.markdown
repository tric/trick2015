This entry implements the "shell game", also known as "follow the ball
in the cup".  To play:

1. Run program once to shuffle, piping output to another file:

    ruby entry.rb | tee result.rb

2. Guess where the ball is, and run output to reveal result:

    ruby result.rb | tee entry.rb

3. Go back to 1 to play again.

If this game is too hard: try easy.rb, which will run the same game at
slower speed.

Requires zlib.  Verified to work on:
* ruby 1.9.3p484 (2013-11-22 revision 43786) [x86_64-linux]
* ruby 2.1.5p273 (2014-11-13) [x86_64-linux-gnu]
* ruby 2.2.3p173 (2015-08-18 revision 51636) [x86_64-cygwin]
