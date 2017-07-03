-module(second).
-export([hypot/2,peri/2,area/2]).

hypot(X,Y)->%function to give hypotenuse
	math:sqrt(first:sqr(X)+first:sqr(Y)).

peri(X,Y)->%function to give perimeter
	X+Y+hypot(X,Y).

area(X,Y)->%function to give area
	0.5*X*Y.
