#!/usr/bin/env bash
# Sets up the WALI test suite (https://github.com/arjunr2/WALI) to run against wizeng.
#
# The .wasm test modules are checked into that repo, so the WALI LLVM/musl toolchain is
# not needed here; only the native reference binaries are built, with the host cc.
#
#   ./setup.sh [<path-to-WALI>]     # default: ../../../WALI, cloned if absent
#
# Then, as it prints:
#   cd <WALI>/tests && python3 run_tests.py --config wizeng.toml

set -e

HERE=$(cd $(dirname ${BASH_SOURCE[0]}) && pwd)
WIZENG_LOC=$(cd $HERE/../.. && pwd)
WALI=${1:-$(dirname $WIZENG_LOC)/WALI}

# run_tests.py and the toolchain generator both need tomllib.
PYTHON=${PYTHON:-python3}
if ! $PYTHON -c 'import tomllib' 2>/dev/null; then
    for p in python3.13 python3.12 python3.11; do
        if command -v $p >/dev/null && $p -c 'import tomllib' 2>/dev/null; then PYTHON=$p; break; fi
    done
fi
if ! $PYTHON -c 'import tomllib' 2>/dev/null; then
    echo "error: need python 3.11+ (or 'pip install tomli'); set PYTHON= to choose one" >&2
    exit 1
fi

# Prefer the engine built in this repo over whatever bin/wizeng happens to point at.
HOST=$(bash $WIZENG_LOC/scripts/sense_host.sh | cut -d' ' -f1)
WIZENG=${WIZENG:-$WIZENG_LOC/bin/wizeng.$HOST}
if [ ! -x "$WIZENG" ]; then
    echo "error: $WIZENG not built; run 'make $HOST' in $WIZENG_LOC" >&2
    exit 1
fi

if [ ! -d "$WALI" ]; then
    echo "Cloning WALI into $WALI ..."
    git clone --depth=1 https://github.com/arjunr2/WALI.git "$WALI"
fi
WALI=$(cd "$WALI" && pwd)

# tests/Makefile includes toolchains/wali.mk, which is generated rather than committed.
[ -f "$WALI/toolchains/wali.mk" ] || (cd "$WALI" && $PYTHON toolchains/gen_toolchains.py)

# The .wasm modules are committed; restore them if a 'make clean' removed them.
git -C "$WALI" checkout -- tests/bin 2>/dev/null || true

# Native reference binaries for the differential comparison (host cc only).
make -C "$WALI/tests" native

cat > "$WALI/tests/wizeng.toml" <<EOF
[[engines]]
name = "wizeng"
command = "$WIZENG"
args = ["{verbose_arg}", "--expose=wali", "--env-file={env_file}", "{wasm_file}"]
verbose_arg = "--trace-module=wali"
EOF

echo
echo "Ready. Run the suite with:"
echo "  cd $WALI/tests && $PYTHON run_tests.py --config wizeng.toml"
echo "  cd $WALI/tests && $PYTHON run_tests.py --config wizeng.toml -f open chmod   # subset"
