-module(xor1).
-export([fn1/2,fn2/2,fn3/2]).

fn1(X,Y)->
	(X and (not Y)) or ((not X) and Y).
fn2(X,Y)->
	not X==Y.
fn3(X,Y)->
	X=/=Y.
	
