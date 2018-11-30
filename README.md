Rebar3 ShellTestRunner
----------------------

[![CircleCI](https://circleci.com/gh/tsloughter/rebar3_tests.svg?style=svg)](https://circleci.com/gh/tsloughter/rebar3_tests)

## Requirements

* [rebar3](http://www.github.com/rebar/rebar3)
* [shelltestrunner](https://github.com/simonmichael/shelltestrunner/)

Installing `shelltestrunner`:

```shell
$ sudo apt-get install shelltestrunner
```

or

```shell
$ cabal install shelltestrunner
```

## Usage

```shell
λ ./run_tests.sh
:bad_app_file/bad_app_file.test: [OK]
:conflicting_erlydtl/conflicting_erlydtl.test: [OK]
:ct_failure/ct_failure.test: [OK]
:defaultlib/defaultlib.test: [OK]
:eleveldb/eleveldb.test:1: [OK]
:eleveldb/eleveldb.test:2: [OK]
:help_tests/help_tests.test:1: [OK]
:help_tests/help_tests.test:2: [OK]
:help_tests/help_tests.test:3: [OK]
:help_tests/help_tests.test:4: [OK]
:help_tests/help_tests.test:5: [OK]
:multi_app_hooks/multi_app_hooks.test:1: [OK]
:multi_app_hooks/multi_app_hooks.test:2: [OK]
:multi_app_hooks/multi_app_hooks.test:3: [OK]
:port_compiler/port_compiler.test:1: [OK]
:port_compiler/port_compiler.test:2: [OK]
:single_app_hooks/single_app_hooks.test:1: [OK]
:single_app_hooks/single_app_hooks.test:2: [OK]
:sub_app_eleveldb/sub_app_eleveldb.test:1: [OK]
:sub_app_eleveldb/sub_app_eleveldb.test:2: [OK]

         Test Cases   Total
 Passed  20           20
 Failed  0            0
 Total   20           20
```
