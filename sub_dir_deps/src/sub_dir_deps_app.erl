%%%-------------------------------------------------------------------
%% @doc sub_dir_deps public API
%% @end
%%%-------------------------------------------------------------------

-module(sub_dir_deps_app).

-behaviour(application).

-export([start/2, stop/1]).

start(_StartType, _StartArgs) ->
    sub_dir_deps_sup:start_link().

stop(_State) ->
    ok.

%% internal functions
