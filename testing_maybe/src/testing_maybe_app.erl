%%%-------------------------------------------------------------------
%% @doc testing_maybe public API
%% @end
%%%-------------------------------------------------------------------

-module(testing_maybe_app).

-behaviour(application).

-export([start/2, stop/1]).

start(_StartType, _StartArgs) ->
    testing_maybe_sup:start_link().

stop(_State) ->
    ok.

%% internal functions
