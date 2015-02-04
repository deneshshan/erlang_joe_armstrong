-module(geometry).
-export([area/1]).

area({rectangle, Width, Height})         -> Width * Height;
area({square, Side})                     -> Side * Side;
area({circle, Radius})                   -> 3.14159265359 * Radius;
area({triangle_r_angled, Width, Height}) -> Width * Height / 2.
