#!/bin/bash

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

# remaining arguments are appended to V3C_OPTS
V3C_OPTS="$V3C_OPTS $@"

# Clone virgil
cd ..
git clone https://github.com/titzer/virgil
cd virgil

# Set up latest version of virgil
export PATH=$PATH:"$PWD/bin:$PWD/bin/dev:$PWD/test/config"
# TODO: test configure is only needed for progress, get elsewhere?
./test/configure
make

# Set up wizard
cd ../wizard-engine
make -j $TEST_TARGET

# Install Opam for specification tests
sudo apt install -y opam
opam init

# Install spec test dependencies
opam install dune
opam install menhir -y
# Make dune available in PATH
eval $(opam config env)

# Set up specification tests
./test/wasm-spec/update.sh

# Run all tests
./test/all.sh
