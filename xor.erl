-module(xor1)
-export([fn1/2])

fn1(X,Y)->
	(X and (not Y)) or ((not X) and Y).
