#!/usr/bin/env bash

OBJECT_MODEL_DIRS="src/engine/objmodel"

function exit_usage() {
    echo "Usage: build.sh [options] <wizeng|objdump|unittest> <x86-linux|x86-64-darwin|x86-64-linux|arm64-linux|jvm|wasm-wave|v3i>"
    echo "Options:"
    echo "  --nojit                 disable the JIT compiler"
    echo "  --test-monitors         include the test monitors"
    echo "  --debug                 include the debug monitors"
    echo "  --debug-gc              enable GC debugging (native targets)"
    echo "  --no-spec-test          exclude the spec test mode"
    echo "  --no-wasm-run           exclude the Wasm run mode"
    echo "  --cbd                   include the canonical bytecode description interpreter"
    echo "  --boxed-continuation    use boxed continuations"
    echo "  --object-model=<model>  select an object model from ${OBJECT_MODEL_DIRS}/"
    exit 1
}

# Print the names of the available object models, one per line, indented.
function list_object_models() {
    local dir
    for dir in ${OBJECT_MODEL_DIRS}/*/; do
        echo "  $(basename $dir)"
    done
}

# Append a comma-separated string to the given variable.
append_comma_sep() {
    local varname=$1
    local newpair=$2
    local current="${!varname}"
    if [ -z "$current" ]; then
        eval "$varname=\"$newpair\""
    else
        eval "$varname=\"$current,$newpair\""
    fi
}

if [ "$#" -lt 2 ]; then
    exit_usage
fi

V3C=${V3C:=$(which v3c)}
if [ ! -x "$V3C" ]; then
    if [ "$VIRGIL_LOC" != "" ]; then
	V3C=$(cd $VIRGIL_LOC && pwd)/bin/v3c
    else
        echo "Virgil compiler (v3c) not found in \$PATH, and neither \$V3C or \$VIRGIL_LOC is set"
        exit 1
    fi
fi

if [ "$VIRGIL_LIB" = "" ]; then
    if [ "$VIRGIL_LOC" = "" ]; then
	V3C_LOC=$(dirname $(which v3c))
	VIRGIL_LOC=$(cd $V3C_LOC/../ && pwd)
    fi
    VIRGIL_LIB=${VIRGIL_LOC}/lib/
fi

if [ ! -e "$VIRGIL_LIB/util/Vector.v3" ]; then
    echo "Virgil library code not found (searched $VIRGIL_LIB)."
    echo "Please set either: "
    echo "  VIRGIL_LOC, to the root of your Virgil installation"
    echo "  VIRGIL_LIB, to point directly to root of the library"
    exit 1
fi

ENGINE="src/engine/*.v3 src/engine/compression/*.v3 src/engine/objmodel/*.v3 src/util/*.v3 $VIRGIL_LIB/util/*.v3"
MONITORS="src/monitors/*.v3"
TEST_MONITORS="src/monitors/test/*.v3"
DEBUG_MONITORS="src/monitors/debug/*.v3"
TARGET_V3="src/engine/v3/*.v3"
TARGET_X86_64="src/engine/native/*.v3 src/engine/compiler/*.v3 src/engine/x86-64/*.v3 $VIRGIL_LIB/asm/x86-64/*.v3"
UNITTEST="test/unittest/*.v3 test/wasm-spec/*.v3 test/unittest.main.v3 $VIRGIL_LIB/test/*.v3"
UNITTEST_X86_64_LINUX="test/unittest/x86-64-linux/*.v3"
SPECTEST_MODE="test/wasm-spec/*.v3 src/SpectestMode.v3"
WASM_MODE="src/WasmMode.v3"
WIZENG="src/wizeng.main.v3 src/modules/*.v3 src/modules/wizeng/*.v3"
WAVE="src/modules/wave/*.v3"
WASI="src/modules/wasi/*.v3"
WASI_X86_64_LINUX="src/modules/wasi/x86-64-linux/*.v3 $VIRGIL_LIB/x86-64-linux/SyscallLayouts.v3"
WALI="src/modules/wali/*.v3"
WALI_X86_64_LINUX="src/modules/wali/x86-64-linux/*.v3 $VIRGIL_LIB/wasm-linux/*.v3"
MODULES="src/modules/*.v3"

TARGET_CBD_SLOW="src/engine/cbd/slow/*.v3"
TARGET_CBD_FAST="src/engine/cbd/fast/*.v3"

CONTINUATION="src/engine/continuation/UnboxedContinuation.v3"
CONTINUATION_X86_64="src/engine/x86-64/continuation/X86_64UnboxedContinuation.v3"

CBD=false
OBJECT_MODEL=boxed

while [[ $# -gt 0 ]]; do
    case "$1" in
        --nojit)
            append_comma_sep REDEFS "SpcTuning.disable=true"
            ;;
        --test-monitors)
            MONITORS="$MONITORS $TEST_MONITORS"
            ;;
        --debug)
            MONITORS="$MONITORS $DEBUG_MONITORS"
            append_comma_sep REDEFS "MonitorOptions.enableCheckMonitors=true"
            ;;
        --debug-gc)
            DEBUG_GC=1
            ;;
        --no-spec-test)
            SPECTEST_MODE=""
            ;;
        --no-wasm-run)
            WASM_MODE=""
            ;;
	--cbd)
	    CBD=true
	    ;;
        --boxed-continuation)
            append_comma_sep REDEFS "FeatureDisable.unboxedConts=true"
            CONTINUATION="src/engine/continuation/BoxedContinuation.v3"
            CONTINUATION_X86_64="src/engine/x86-64/continuation/X86_64BoxedContinuation.v3"
            ;;
        --object-model=*)
            OBJECT_MODEL="${1#*=}"
            ;;
        *)
            break
            ;;
    esac
    shift
done

# Select the object model sources out of the object model directory.
OBJECT_MODEL_DIR="${OBJECT_MODEL_DIRS}/${OBJECT_MODEL}"
if [ ! -d "$OBJECT_MODEL_DIR" ]; then
    echo "Unknown object model \"$OBJECT_MODEL\". Found these:"
    list_object_models
    exit 1
fi
OBJECT_MODEL_SRC=$(ls ${OBJECT_MODEL_DIR}/*.v3 2> /dev/null)
if [ -z "$OBJECT_MODEL_SRC" ]; then
    echo "No sources found for object model \"$OBJECT_MODEL\" (searched $OBJECT_MODEL_DIR)."
    exit 1
fi

ENGINE="$ENGINE $CONTINUATION $OBJECT_MODEL_SRC"
TARGET_X86_64="$TARGET_X86_64 $CONTINUATION_X86_64"

PROGRAM=$1
TARGET=$2

if [[ "$TARGET" =~ x86 && $DEBUG_GC = 1 ]]; then
    V3C_OPTS="$V3C_OPTS -redef-field=RiGc.debug=true"
fi

function make_build_file() {
	local target=$TARGET

	local build_time=$(date "+%Y-%m-%d %H:%M:%S")
	build_file="bin/Build-${TARGET}.v3"
	if [ "$release" == "release" ]; then
		local build_data="$target $build_time Release"
	else
		local build_data="$target $build_time by ${USER}@${HOST}"
	fi

	# TODO: use -redef-field instead of generating a build file
        REVS="$(git rev-list --count HEAD)"
	if [ -z $REVS ];
	then
		REVS=$(date +%s)
	fi
	echo "var unused__ = (Version.buildData = \"$build_data\", Version.minorVersion = $REVS);" > $build_file

	echo $build_file
}


# Compute sources
case "$PROGRAM" in
    wizeng)
	SOURCES="$ENGINE $WAVE $WASI $WALI $MONITORS $SPECTEST_MODE $WASM_MODE $WIZENG"
	case "$TARGET" in
	    x86-64-linux|x86_64_linux)
		SOURCES="$SOURCES $WASI_X86_64_LINUX $WALI_X86_64_LINUX"
		;;
	esac
	;;
    unittest)
	SOURCES="$ENGINE $UNITTEST"
	case "$TARGET" in
	    x86-64-linux|x86_64_linux)
		SOURCES="$SOURCES $UNITTEST_X86_64_LINUX $MODULES $WASI $WASI_X86_64_LINUX"
		;;
	esac
	;;
    objdump)
	SOURCES="$ENGINE src/objdump.main.v3"
	;;
    *)
	exit_usage
	;;
esac

# make build file with target
BUILD_FILE=$(make_build_file)

PREGEN=${PREGEN:=1}

LANG_OPTS="-lang:fun-exprs -lang:simple-bodies -lang:descriptors"
if [ "$REDEFS" != "" ]; then
    V3C_OPTS="$V3C_OPTS -redef-field=$REDEFS"
fi

# build
exe=${PROGRAM}.${TARGET}
case "$TARGET" in
    x86-linux|x86_linux)
	TARGET_SRC=$TARGET_V3
	if [ "$CBD" = true ]; then TARGET_SRC="$TARGET_CBD_SLOW $TARGET_V3"; fi
	exec v3c-x86-linux -symbols -heap-size=512m -stack-size=1m $LANG_OPTS $V3C_OPTS -program-name=${PROGRAM}.x86-linux -output=bin/ $SOURCES $BUILD_FILE $TARGET_SRC
	;;
    x86-64-darwin|x86_64_darwin)
	exec v3c-x86-64-darwin -symbols -heap-size=700m -stack-size=1m $LANG_OPTS $V3C_OPTS -program-name=${PROGRAM}.x86-64-darwin -output=bin/ $SOURCES $BUILD_FILE $TARGET_V3
	;;
    arm64-linux|arm64_linux)
	exec v3c-arm64-linux -symbols -heap-size=700m -stack-size=1m $LANG_OPTS $V3C_OPTS -program-name=${PROGRAM}.arm64-linux -output=bin/ $SOURCES $BUILD_FILE $TARGET_V3
	;;
    x86-64-linux|x86_64_linux)
	TARGET_SRC=$TARGET_X86_64
	if [ "$CBD" = true ]; then TARGET_SRC="$TARGET_CBD_FAST $TARGET_X86_64"; fi
	exec v3c-x86-64-linux -symbols -heap-size=1700m -stack-size=2m $LANG_OPTS $V3C_OPTS -program-name=${PROGRAM}.${TARGET} -output=bin/ $SOURCES $BUILD_FILE $TARGET_SRC
	STATUS=$?
	if [ $STATUS != 0 ]; then
	    exit $STATUS
	fi
	if [ $PROGRAM = "wizeng" ]; then
	    E=bin/${exe}
	    HOSTS=$(scripts/sense_host.sh)
	    if [[ "$PREGEN" != 0 && "$HOSTS" =~ "x86-64-linux" ]]; then
		# try running pregen if the host platform can run the pregen binary
		cp $E $E.pregen
		$E.pregen --pregen=$E > /tmp/wizeng.$(whoami).pregen.out 2>&1
		STATUS=$?
		if [ $STATUS != 0 ]; then
		    echo "error: running $E.pregen failed"
		    exit $STATUS
		else
		    rm $E.pregen
		fi
	    fi
	fi
	;;
    jvm)
	exec v3c-jar $LANG_OPTS $V3C_OPTS -program-name=${PROGRAM}.jvm -output=bin/ $SOURCES $BUILD_FILE $TARGET_V3
	;;
    wasm-*)
	# Compile to a wasm target
	V3C_WASM_TARGET=$(dirname $V3C)/dev/v3c-$TARGET
	if [ ! -x $V3C_WASM_TARGET ]; then
	    echo Unknown Wasm target \"$TARGET\". Found these:
	    ls -a ${V3C_PATH/bin\/v3c/bin\/dev\/v3c-wasm-*} | cat
	    exit 1
	fi
	exec $V3C_WASM_TARGET -symbols -heap-size=200m $LANG_OPTS $V3C_OPTS -program-name=${PROGRAM} -output=bin/ $SOURCES $BUILD_FILE $TARGET_V3
	;;
    v3i)
	# check that the sources typecheck
	$V3C $LANG_OPTS $V3C_OPTS $SOURCES $TARGET_V3
	RET=$?
	if [ $RET != 0 ]; then
	    exit $RET
	fi
	DIR=$(pwd)
	LIST=""
	for f in $SOURCES $TARGET_V3; do
	    if [[ "$f" != /* ]]; then
		f="$DIR/$f"
	    fi
	    LIST="$LIST $(ls $f)"
	done
	echo '#!/usr/bin/env bash' > bin/$PROGRAM.v3i
	echo "v3i $LANG_OPTS \$V3C_OPTS $LIST" '$@' >> bin/$PROGRAM.v3i
	chmod 755 bin/$PROGRAM.v3i
	# run v3c just to check for compile errors
	exec $V3C $LANG_OPTS $V3C_OPTS $LIST
	;;
    *)
	exit_usage
	;;
esac
