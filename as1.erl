-module(as1).
-export([perimeter/1,area/1,enclose/1]).

perimeter({circle,{_X,_Y},R}) ->%perimeter of the circle
	math:pi()*2*R;
perimeter({rectangle,{_X,_Y}, H, W})->%perimeter of the rectangle
	2*(H+W);
perimeter({triangle,{_X,_Y}, A, B, C})->%perimeter of the triangle three sides are given
	A+B+C.
	

area({circle,{_X,_Y},R}) ->% area of circle
	math:pi()*R*R;
area({rectangle,{_X,_Y}, H, W})->% area of the rectangle
	H*W;
area({triangle,{_X,_Y}, A, B, C})->% area of the triangle
	S=(A+B+C)/3,
	math:sqrt(S*(S-A)*(S-B)*(S-C)).


enclose({circle,{X,Y},R}) ->% enclosing rectangle of a circle
	{rectangle,{X,Y},2*R,2*R};
enclose({rectangle,{X,Y}, H, W})->%enclosing rectangle of a rectangle
	{rectangle,{X,Y}, H, W};
enclose({righttriangle,{X,Y}, A, B})->% enclosing rectangle of a right triangle
	{rectangle,{X,Y},A,B}.
