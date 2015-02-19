-module(geometry).
-export([test/0,area/1]).

test() ->
  12            = area({rectangle, 3, 4}),
  144           = area({square, 12}),
  6.28318530718 = area({circle, 2}),
  3.0           = area({triangle, 2, 3}),
  tests_worked.


area({rectangle, Width, Height})         -> Width * Height;
area({square, Side})                     -> Side * Side;
area({circle, Radius})                   -> 3.14159265359 * Radius;
area({triangle, Width, Height}) -> Width * Height / 2.
