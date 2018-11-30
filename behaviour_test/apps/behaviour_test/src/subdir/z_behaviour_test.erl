-module(z_behaviour_test).

-export([test_callback/0]).

-behaviour(a_behaviour_test_bhvr).

test_callback() ->
    ok.
