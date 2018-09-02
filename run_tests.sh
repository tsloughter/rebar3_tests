#!/usr/bin/env bash

cd $(dirname $(realpath $0))

export TERM=dumb

find . -name _build | xargs rm -rf

shelltest -c --diff --execdir */*.test
