%%%-------------------------------------------------------------------
%% @doc project_app_behaviours public API
%% @end
%%%-------------------------------------------------------------------

-module(project_app_behaviours_app).

-behaviour(application).

-export([start/2, stop/1]).

start(_StartType, _StartArgs) ->
    project_app_behaviours_sup:start_link().

stop(_State) ->
    ok.

%% internal functions
