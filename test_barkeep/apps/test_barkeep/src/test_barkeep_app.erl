%%%-------------------------------------------------------------------
%% @doc test_barkeep public API
%% @end
%%%-------------------------------------------------------------------

-module(test_barkeep_app).

-behaviour(application).

%% Application callbacks
-export([start/2
        ,stop/1]).

%%====================================================================
%% API
%%====================================================================

start(_StartType, _StartArgs) ->
    Dispatch = cowboy_router:compile([
                                     {'_', [{"/", test_barkeep_handler, []}]}
                                     ]),
    cowboy:start_http(test_barkeep_listener, 100, [{port, 8080}],
                      [{env, [{dispatch, Dispatch}]}]
                     ),

    test_barkeep_sup:start_link().

%%--------------------------------------------------------------------
stop(_State) ->
    ok.

%%====================================================================
%% Internal functions
%%====================================================================
