#!/usr/bin/env bash

set -xe

cd $(dirname $(realpath $0))

export TERM=dumb

if [ "$CIRCLECI" ]
then
    curl -k https://s3.amazonaws.com/rebar3-nightly/rebar3 -o rebar3
    chmod +x rebar3
    export PATH=$(dirname $(realpath $0)):$PATH
fi

rebar3 version

find . -name _build | xargs rm -rf

shelltest -c --diff --all --execdir */*.test
