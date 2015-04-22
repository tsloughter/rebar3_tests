-module(fail_SUITE).

-export([suite/0,
         all/0,
         fail/1]).

-include_lib("common_test/include/ct.hrl").
-include_lib("eunit/include/eunit.hrl").

suite() -> [].

all() -> [fail].

fail(_Config) ->
    ?assert(false).
