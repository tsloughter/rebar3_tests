-module(acme_SUITE).
-compile([export_all, nowarn_export_all]).

all() ->
    [test_env].

test_env(_Config) ->
    false = lists:keyfind(acme, 1, application:loaded_applications()),
    {ok, 42} = application:get_env(acme, answer),

    ok = application:load(acme),
    {ok, 42} = application:get_env(acme, answer),

    ok = application:unload(acme),
    undefined = application:get_env(acme, answer),

    ok.
