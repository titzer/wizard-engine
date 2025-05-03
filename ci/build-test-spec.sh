#!/bin/bash

if [ "$#" -lt 2 ]; then
    echo "Usage: build-test-spec.sh <target> <proposal>"
    exit 1
fi

set -e

# for CI, use line-by-line test output
export PROGRESS_ARGS=l

# first argument must be the target
export TEST_TARGET=$1
shift

export PROPOSAL=$1
shift

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
if [ "$(which opam)" = "" ]; then
    sudo apt install -y opam
    opam init

    # Install spec test dependencies
    opam install dune
    opam install ocamlbuild
    opam install menhir -y
fi

# Make dune available in PATH
eval $(opam config env)

# Set up specification tests
./test/wasm-spec/update.sh "$PROPOSAL"

# Run all tests
exec ./test/proposal.sh "$PROPOSAL"
