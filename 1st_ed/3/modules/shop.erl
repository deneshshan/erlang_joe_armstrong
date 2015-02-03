-module(shop).
-export([cost/1]).
-export([total/1]).

cost(oranges)     -> 5;
cost(newpaper)    -> 8;
cost(apples)      -> 2;
cost(pears)       -> 9;
cost(milk)        -> 7.

total([{What, N} | T])  -> shop:cost(What) * N + total(T);
total([])               -> 0.
