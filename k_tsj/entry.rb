'(#|'.b;module Scheme;T,R,I,C,K=Struct.new(:a,:d,:o){include Enumerable# |#)#|
def initialize x,y=(),o=0.!;super c(x),c(y),o;K.empty?&&(R.delete a;R.delete d
R<<self)end;def-@;T[:-,self]end;alias == equal?;def call i;Scheme.t self,i end
def to_a;[T[:*,self]]end;def c o;Array===o ?Scheme.l(o):o end;def each&b;b.(a)
d&&d.each(&b)end},[],e=Struct.new(:t,:u){def[]=k,v;t[k]=v end;def[]i;t.fetch(i
){u[i]}end},e[_h={}],[];def Object.const_missing i;i end;refine(Fixnum){def[]i
T[self,T[i],1];end};module A;          def -@;T[:-,T[self]];end;def call *a;a.
empty?? T[self]:Scheme.t(self           ,a[0])end;end;refine(Array){def call a
T[self,T===a&&a.o ? a:T[a],1]            end}; refine(Symbol){include A;def *i
T[self,T[:*,T[i]]]end; def-i;             Symbol===i ? :"#{self}-#{i}":T[self,
T[:-,T[i]]]end;};at_exit{R.drop(K[        0]=$0==__FILE__ ?0: 2).each{|l|v l}}
refine(String){include A;}; refine(        Object){def method_missing i,*s;a,=
s;s.empty?? i:T[i,T===a&&a.o ? a:T[         a]]end};class<<self;def t s,i;T[s,
Array===i ?T[i[0]]:T===i&&i.o ? i:          T[i],1]end;def e f,n;f.map{|i|v i,
n}[-1]end;def r x,f,n;->*a{e x.d.             d,I[f ? Hash[f.zip a]:{},n]};end
def l v;v.reverse.inject(()){|a,              i|T[i,a]};end;def v x,n=C;case x
when T;case x.a when :LAMBDA;r                 x,x.d.a,n when :LET; e={}; x.d.
a.each{|i|e[i.a]=v i.d.a,n};e                   x.d.d,I[e,n];when :IF;v(v(x.d.
a,n)?x.d.d.a: (y=x.d.d.d)?y.         a :         (),n);when :COND; while x=x.d
break e x.a.d,n if:ELSE==x.        a.a ||         v(x.a.a,n); end;when :DEFINE
Symbol===(u=x.d.a) ?(n[u]=        v x.d.d.        a,n):(n[u.a]=r x,u.d,n);when
:QUOTE;d=x.d.a;d==true ?         :TRUE:(d==               false)?:FALSE:d else
f,*r=x.map{|i|v i,n};f.         call(*r) end              when Symbol;n[x]else
x;end;end;end;%w(PAIR?         o T===o NOT o              0.!.==o SET-CDR! p,o
p.d=o LIST *s l(s) CAR        p p.a NUMBER? o             Numeric===o SET-CAR!
p,o p.a=o ERROR *s fail(s*"\s") READ * t="using(Scheme);"*1;begin;gets&&eval(\
t<<($_!=$/?$_:x),TOPLEVEL_BINDING);rescue(Object);retry;end NULL? o o==() CONS
a,b T[a,b] APPLY f,*n,s f.(*(n+(s||[]).map.to_a)) EOF-OBJECT? o o==() LENGTH l
l.to_a.size SYMBOL? o Symbol===o EQ? a,b a.equal?b DISPLAY o puts(o) CDR p p.d
* *s s.inject:* - *s s.inject:- MAP p,l l(l.map(&p)) STRING? o o.is_a?(String)
MIN *s s.min).each_slice(3){|t|eval'_h[:"%s"]=->%s{%s}'%t}end;using Scheme# |#

(DEFINE (FACT N) . (
  (IF (EQ? N . (1)) . (
      1 [* N . ((FACT (- N . (1))))]))))

(DISPLAY (FACT 6))
