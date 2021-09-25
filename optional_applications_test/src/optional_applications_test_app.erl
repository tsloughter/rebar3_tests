%%%-------------------------------------------------------------------
%% @doc optional_applications_test public API
%% @end
%%%-------------------------------------------------------------------

-module(optional_applications_test_app).

-behaviour(application).

-export([start/2, stop/1]).

start(_StartType, _StartArgs) ->
    optional_applications_test_sup:start_link().

stop(_State) ->
    ok.

%% internal functions
