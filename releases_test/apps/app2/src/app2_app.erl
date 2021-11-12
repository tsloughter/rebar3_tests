%%%-------------------------------------------------------------------
%% @doc app2 public API
%% @end
%%%-------------------------------------------------------------------

-module(app2_app).

-behaviour(application).

-export([start/2, stop/1]).

start(_StartType, _StartArgs) ->
    app2_sup:start_link().

stop(_State) ->
    ok.

%% internal functions
