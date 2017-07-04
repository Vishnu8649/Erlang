-module(max3).
-export([fn/3]).

fn(X,Y,Z)->
	max(max(X,Y),Z).
