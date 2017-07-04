-module(heq).
-export([count/3]).

count(X,X,X)->
	3;
count(X,X,_)->
	2;
count(X,_,X)->
	2;
count(_,X,X)->
	2;
count(_,_,_)->
	0.

