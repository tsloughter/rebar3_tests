-module(a_dep).

-compile([{parse_transform, b_dep}]).


