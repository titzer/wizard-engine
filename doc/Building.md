# Building and Testing Wizard

The Wizard engine runs on all the platforms that its implementation language, Virgil, supports.
However, it runs best and fastest on `x86-64-linux`, where it has special support for native memories and handwritten assembly.
Use the steps below to build and test the Wizard engine.

## Get Virgil

You'll first need to get a copy of the Virgil compiler installed and running on your system.
Clone the repo and put its `bin` directory in your `$PATH`.

```
% git clone git@github.com:titzer/virgil.git
% cd virgil
% export PATH=$PATH:`pwd`/bin
```

The Virgil repository has compiler binaries directly checked in, as well as scripts that should detect your host platform and link up the right binary.
It's mostly ready to run right out of the box.

```
% v3c -version
Aeneas III-6.1418: no input files
Build Data: x86-linux 2021-08-06 19:01:30 by titzer@magic-carpet
```

## Stay up-to-date with Virgil

The Wizard engine unabashedly uses all of the most cutting-edge Virgil language features.
In fact, it's almost a showcase for the language.
Some new features and optimizations required by Wizard might not be fully supported in the stable compiler in the Virgil repo.
Make sure to pull to stay up-to-date, and *bootstrap* the Virgil compiler to make sure it's running the latest version.
If you are having weird build errors or bugs, try this step.

```
% cd virgil
% git pull
Already up to date.
% bin/dev/aeneas clean
% bin/dev/aeneas bootstrap
```

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

Wizard has two layers of tests:

* internal unit tests
* a runner for the testsuite from the Wasm [spec](http://github.com/WebAssembly/spec)

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

To run tests from the specification, you'll need to clone the specification repo under `wasm-spec` in your Wizard checkout (or link to it).
You'll also need to build the reference interpreter.

```
% cd wizard-engine
% mkdir wasm-spec
% cd wasm-spec
% git clone git@github.com:WebAssembly/spec.git
% cd spec/interpreter
% make
...
```

The Wizard engine does not parse text files (`.wat` or `.wast`).
It relies on the spec interpreter's binary encoding.
There's a utility script to translate all spec tests into their binary format (`.bin.wast`) for testing with Wizard.

```
% cd wizard-engine
% scripts/build-spec-tests.sh
...
```

Now you're ready to run the specification tests.

```
% cd wizard-engine
% test/spec.sh
...
```

### Proposal tests

Note that you can check out modified specs associated with any proposal.
Just place (or link) them under `wasm-spec` and follow similar steps to build and run them.
For example, to test the `tail-call` proposal:

```
% cd wizard-engine
% cd wasm-spec
% git clone git@github.com:WebAssembly/tail-call.git
% cd tail-call/interpreter
% make
...
% cd ../../../
% scripts/build-spec-tests.sh tail-call
...
% test/spec.sh -ext:tail-call tail-call
```
