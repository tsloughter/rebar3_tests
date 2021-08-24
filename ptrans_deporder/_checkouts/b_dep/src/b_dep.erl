-module(b_dep).
-export([parse_transform/2]).

-spec parse_transform(term(), term()) -> term().
parse_transform(Forms, _Options) ->
  try parse_trans:module_info() of
    _ -> Forms
  catch
    % ignore version errors
    error:T when T =/= undef -> Forms
  end.
