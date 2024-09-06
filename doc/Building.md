# Building and Testing Wizard

The Wizard engine runs on all the platforms that its implementation language, Virgil, supports.
However, it runs best and fastest on `x86-64-linux`, where it has special support for native memories and handwritten assembly.
Use the steps below to build and test the Wizard engine.

## Get Virgil

You'll first need to get a copy of the Virgil compiler installed and running on your system.
Clone the repo, put its `bin` directory in your `$PATH`, and build it with `make`.

```
% git clone git@github.com:titzer/virgil.git
% cd virgil
% export PATH=$PATH:`pwd`/bin
% make
```

The Virgil repository has compiler binaries directly checked in, as well as scripts that should detect your host platform and link up the right binary.
It's ready to run out-of-the-box, but Wizard often uses cutting-edge features that require the `make` step above.

## Build Wizard with `make`

If you've now got Virgil in your path, then building Wizard is as easy as cloning it and running `make` (with `-j` to run in parallel).

```
% git clone git@github.com:titzer/wizard-engine.git
% cd wizard-engine
% make -j
vctags -e src/engine/*.v3 src/engine/v3/*.v3 src/util/*.v3 src/wave/*.v3 src/wasi/*.v3 src/jawa/*.v3 src/engine/*.v3 src/engine/v3/*.v3 src/util/*.v3 test/spectest/*.v3 test/spectest.main.v3 src/engine/*.v3 src/engine/v3/*.v3 src/util/*.v3 src/jawa/*.v3 test/unittest/*.v3 test/spectest/*.v3 test/unittest.main.v3 src/wasi/x86-64-linux/*.v3 src/engine/x86-64/*.v3
./build.sh spectest x86-linux
./build.sh wizeng x86-linux
./build.sh unittest x86-linux
./build.sh objdump x86-linux
./build.sh spectest x86-64-linux
./build.sh wizeng x86-64-linux
./build.sh unittest x86-64-linux
./build.sh objdump x86-64-linux
./build.sh spectest jvm
./build.sh wizeng jvm
./build.sh unittest jvm
./build.sh objdump jvm
```

By default, this will build the unittests, the spectest runner, a command line runner, and an objdump utility, for all platforms.
Binaries will be deposited in the `bin` directory, with each platform binary have an appropriate suffix.


## Testing Wizard

Wizard has several batteries of tests:

* internal unit tests
* Wasm [spec](http://github.com/WebAssembly/spec) and proposal tests
* regression tests
* tests for the `wizeng` command-line and monitor functionality
* tests for WASI functionality

### Unit tests
Internal unit tests probe the internal functionality of Wizard's implementation much deeper than tests in the specification, and they are generally faster to run.
If you use the script in the `test/` directory, these unit tests run right in Virgil's interpreter (you don't even need a compile step).
You can also run one of the binaries built and put into the `bin/` directory.

```
% test/unit.sh
...
% bin/unittest.x86-linux
```

You'll notice this spews quite a lot of output on your terminal, and it can be hard to spot failures.
The text output is formatted for a simple testing utility called `progress` (not included) that makes the output much more readable.
You can get this utility from [this repository](https://github.com/titzer/progress).

### Specification tests

The Wizard engine strives to be up-to-date with the WebAssembly official specification, as well as several in-flight proposals.
The `test/` directory has scripts to clone or update the various specification repositories, build the reference interpreter, build the test suite, and run it against Wizard.

```
% cd wizard-engine
% cd test/wasm-spec
% ./update.sh
...
```

This will clone and build the main specification (aka `spec`).
It will also build the tests and copy them into the `test/wasm-spec/src` and `test/wasm-spec/bin` directories.

Now you're ready to run the specification tests.

```
% cd wizard-engine
% test/spec.sh
...
```

### Wizeng tests
In `test/wizeng/` folder, to test all monitors with all the tests in this folder run:
```bash
% cd test/monitors
% ./test.sh 
...
```

### Monitor tests
A battery of tests for monitor functionality are included.
These are in the `test/monitors/` folder and can be run with:
```bash
% test/monitors/test.sh
...
```

Pass monitor names as arguments to only test specific monitor arguments:
```bash
% test/monitors/test.sh loops branches{c}
...
```
Use the `update-expected.sh` script to update/create test outputs, for when a monitor is updated or a new monitor is added:
```bash
% test/monitors/update-expected.sh <new-monitor1> <new-monitor2>
% ls expected/
...
```
This will generate test outputs for programs found in `test/monitors` for the supplied monitors.


### Regression tests
Regression tests are more numerous as they include results from fuzzing, past bugfixes, and various other places.
These tests are separate from the Wizard binaries and use the `.wast` format, which allows them to also run on the reference interpreter and other engines.
You can run the regression tests via:

```
% test/regress.sh
```

If a test fails, it be debugged in the `spectest` runner.


## Proposal Tests

The scripts for building and running specification tests can also handle proposals, such as (`gc` or `function-references`).

```
% cd wizard-engine
% cd test/wasm-spec
% ./update.sh <proposal>
...
% cd ../..
% test/spec.sh -ext:<proposal> <proposal>
...
```

## Running tests on one target

Most test scripts respect the `TEST_TARGET` environment variable, which allows faster turnarounds.

```
% TEST_TARGET=x86-64-linux test/spec.sh
Testing spec       x86-64-linux                | 147 of 147 passed                                                                         
```

## Specifying Wizard options when testing

Most test scripts respect the `WIZENG_OPTS` environment variable and will pass it to Wizard when running tests.

```
% WIZENG_OPTS=-mode=jit test/spec.sh
Testing spec       x86-64-linux                | 147 of 147 passed                                                                         
```

## Periodically stay up-to-date with Virgil

The Wizard engine uses all of the most cutting-edge Virgil language features.
In fact, it's almost a showcase for the language.
Some new features and optimizations required by Wizard might not be fully supported in the stable compiler in the Virgil repo.
Make sure to pull periodically to stay up-to-date, and *bootstrap* the Virgil compiler to make sure it's running the latest version.
If you are having weird build errors or bugs in Wizard, try this step.

```
% cd virgil
% git pull
 ...
% make clean
% make
```
