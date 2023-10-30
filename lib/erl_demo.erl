-module(erl_demo).
-export([sum/2]).
% Nota importante,
% En erlang las variables se escriben en mayusculas

%% @spec sum(a :: integer(), b :: integer()) -> integer().
sum(A,B) -> 
    A*B.