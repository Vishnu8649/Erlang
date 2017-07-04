-module(perf).
-export([perfect/1]).

perfect(N) ->
	perfect(N,0,N-1).

perfect(N,X,Y) when N rem Y==0->
	perfect(N,X+Y,Y-1);

perfect(N,_X,Y) when N rem Y >0->
	perfect(N,_X,Y-1);

perfect(N,X,0)->
	X==N.
