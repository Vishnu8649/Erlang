-module(second).
-export([hypot/2,peri/2,area/2]).

hypot(X,Y)->
	math:sqrt(first:sqr(X)+first:sqr(Y)).

peri(X,Y)->
	X+Y+hypot(X,Y).

area(X,Y)->
	0.5*X*Y.
