#!/usr/bin/env bash

export TERM=dumb
shelltest -c --diff --execdir */*.test
