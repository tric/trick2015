### Remarks

引数なしで普通に実行してください。

    ruby entry.rb

以下の実装/プラットフォームを用いて動作確認しています。

* ruby 2.2.3p173 (2015-08-18 revision 51636) [x86\_64-linux]
* ruby 2.1.7p400 (2015-08-18 revision 51632) [x86\_64-linux]
* ruby 2.0.0p647 (2015-08-18 revision 51631) [x86\_64-linux]
* Gauche scheme shell, version 0.9.4 [utf-8,pthreads], x86\_64-unknown-linux-gnu

### Description

PolyglotなSchemeサブセットのインタプリタです。

Scheme処理系でも実行させることができます。

    gosh -fcase-fold entry.rb

また、本プログラムをrequireすることで任意のコードを与えて実行させることもできます。

    ruby -r./entry.rb programfile

以下は[SICP](https://mitpress.mit.edu/sicp/)に登場する超循環評価器を実行する例です。

    wget -O metacircular.rb "https://drive.google.com/uc?id=0B9ok7qY7UnCOLTBETWw1ajNWcWM"
    ruby -r./entry.rb metacircular.rb
    gosh -fcase-fold metacircular.rb

Gaucheでmetacircular.rbを実行する際は、REPLのプロンプトが表示された直後に
`#!fold-case`リーダディレクティブを与えてください。

### Internals

リスト`((A) B)`はこのままだとRubyでsyntax errorになりますが、
ドット対表記`((A) . (B))`にすると`((A).call(B))`と解釈されパーサを通るようになります。

これを利用してRuby/Schemeの両方で有効なコードを用意し、
実行時に`method_missing`/`const_missing`などを使いながら構文木を組み立ててSchemeプログラムとして評価しています。

### Limitation

以下の構文/手続きの不完全な実装のみを行っています。

* -
* *
* APPLY
* CAR
* CDR
* COND
* CONS
* DEFINE
* DISPLAY
* EOF-OBJECT?
* EQ?
* ERROR
* IF
* LAMBDA
* LENGTH
* LET
* LIST
* MAP
* MIN
* NOT
* NULL?
* NUMBER?
* PAIR?
* QUOTE
* READ
* SET-CAR!
* SET-CDR!
* STRING?
* SYMBOL?
