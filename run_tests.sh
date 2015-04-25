#!/usr/bin/env bash

export TERM=dumb

find . -name _build | xargs rm -rf

shelltest -c --diff --execdir */*.test
