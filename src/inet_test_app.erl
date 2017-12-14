%%%-------------------------------------------------------------------
%% @doc inet_test public API
%% @end
%%%-------------------------------------------------------------------

-module(inet_test_app).

-behaviour(application).

%% Application callbacks
-export([start/2, stop/1]).

%%====================================================================
%% API
%%====================================================================

start(_StartType, _StartArgs) ->
    inet_test_sup:start_link().

%%--------------------------------------------------------------------
stop(_State) ->
    ok.

%%====================================================================
%% Internal functions
%%====================================================================
