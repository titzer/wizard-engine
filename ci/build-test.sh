#!/usr/bin/env bash

if [ "$#" -lt 1 ]; then
    echo "Usage: build-test.sh <target>"
    exit 1
fi

set -e

# first argument must be the target
export TEST_TARGET=$1
shift

# for CI, use line-by-line test output
export PROGRESS_ARGS=l

#############################################################################
# Set up latest version of virgil
T=/tmp/$USER/wizard-engine/build-test-spec/
mkdir -p $T
pushd $T

# Clone virgil if necessary
if [ ! -d virgil ]; then
    git clone --depth 1 https://github.com/titzer/virgil
fi

cd virgil

export PATH="$PWD/bin:$PWD/bin/dev:$PWD/test/config":$PATH
# TODO: test configure is only needed for progress, get elsewhere?
./test/configure
make

# remaining arguments are appended to V3C_OPTS
export V3C_OPTS="$V3C_OPTS $@"
popd
#############################################################################

# Set up wizard
make -j $TEST_TARGET

# Install Opam for specification tests
sudo apt install -y opam
opam init

# Install spec test dependencies
opam install dune
opam install menhir -y
opam install ocamlbuild
# Make dune available in PATH
eval $(opam config env)

# Set up specification tests
./test/wasm-spec/update.sh

# Run all tests
./test/all.sh
