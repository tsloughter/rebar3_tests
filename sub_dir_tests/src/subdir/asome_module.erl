-module(asome_module).

-export([some_callback/0]).

-behaviour(some_behaviour).

some_callback() ->
    ok.
