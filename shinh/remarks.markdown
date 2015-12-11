# Particle programming

This program is a Quine. Quine is an overused motif but it's not the
main topic of this entry. My challenge was to write arbitrary Ruby
code with fewer non-particles, where a particle is a word which
consists of one or two characters.

[Quine on chessboard](http://d.hatena.ne.jp/ku-ma-me/20090923/p1) is a
Quine only with particles, but this code doesn't show Ruby is a
Turing-complete language only with particles. Unfortunately, I
couldn't find a perfect solution for this problem. My entry uses a
single 3-character word, "%I{". I think this is a serious limitation
of Ruby.

## Tricks

To run arbitrary Ruby code, we often use Kernel#eval. You cannot
directly write "eval" as "eval" is a 4-character word. This program
creates :send by %I{#{?s+?e+?n+?d}}. I was guessing no one would use
the %I literal. I'm happy I could find a usage of it.

Once we get :send, we can use a technique for symbolic Ruby
programming. You can create a lambda by "->(){}", implicitly call
Symbol#to_proc by prefixing '&' to a symbol, and use Proc#[] instead
of Proc#call. Try following one-liner:

    ->(&_){_[_,?e+?v+?a+?l,'puts "hello"']}[&%I{#{?s+?e+?n+?d}}[0]]

Some sub-tricks are also involved. The positions of particles are
carefully arranged to get the code parsed. For example, you should
always put '+' at the end of a line to concatenate two strings.

You can see the main code by changing the second ?e+?v+?a+?l to
?p+?u+?t+?s. If you are not familiar with pack/unpack, you may be
surprised how concise the code for formatting is. Try

    a=File.read("remarks.markdown").split
    puts a.pack("A15"*a.size).unpack("A61"*19)
