### Remarks

Just run it with no argument:

    ruby entry.rb

I confirmed the following implementations/platforms:

* ruby 2.2.4p230 (2015-12-16 revision 53155) [x86\_64-linux]
* ruby 2.1.8p440 (2015-12-16 revision 53160) [x86\_64-linux]
* ruby 2.0.0p648 (2015-12-16 revision 53162) [x86\_64-linux]
* Gauche scheme shell, version 0.9.4 [utf-8,pthreads], x86\_64-unknown-linux-gnu

### Description

A polyglot of Ruby and Scheme.

This program can be run on a Scheme interpreter.

    gosh -fcase-fold entry.rb

One more thing, you can specify any code as follows.

    ruby -r./entry.rb programfile

Here's an example to run the metacircular evaluator described in [SICP](https://mitpress.mit.edu/sicp/).

    wget -O metacircular.rb "https://raw.githubusercontent.com/k-tsj/ruby-scheme/master/metacircular.rb"
    ruby -r./entry.rb metacircular.rb
    gosh -fcase-fold metacircular.rb

When you run metacircular.rb on Gauche, give `#!fold-case` reader directive after showing REPL prompt.
