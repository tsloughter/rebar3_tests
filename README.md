Rebar3 ShellTestRunner
----------------------

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
$ ./run_tests.sh
:ct_failure/ct_failure.test: [OK]
:defaultlib/defaultlib.test: [OK]

         Test Cases  Total
 Passed  2           2
 Failed  0           0
 Total   2           2
```
