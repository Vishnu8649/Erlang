-module(pieces).
-export([p1/1]).

p1(1)->
	2;

p1(N) when N>1->
	p1(N-1)+N.
