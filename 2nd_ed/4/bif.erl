-module(bif).
-export([my_tuple_to_list/1]).

my_tuple_to_list({}) -> [];
my_tuple_to_list(T) ->
  [element(1, T) | erlang:delete_element(1, T) ].
