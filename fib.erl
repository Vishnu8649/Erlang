-module(fib).
-export([fib/1,fib1/1]).

fib(0)->%direct recursion
	0;
fib(1)->
	1;
fib(N) when N>1 ->
	fib(N-1)+fib(N-2).

fib1(N)->%tail recursion
	fib1(0,1,N).
fib1(X,_Y,0)->
	X;
fib1(X,Y,I)->
	fib1(Y,X+Y,I-1).
