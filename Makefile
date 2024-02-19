all: x86-linux x86-64-linux jvm

.PHONY: clean x86-linux x86-64-linux jvm wave
clean:
	rm -f TAGS bin/*
	cp scripts/* bin/

x86-linux: bin/spectest.x86-linux bin/wizeng.x86-linux bin/unittest.x86-linux bin/objdump.x86-linux

x86-64-linux: bin/spectest.x86-64-linux bin/wizeng.x86-64-linux bin/unittest.x86-64-linux bin/objdump.x86-64-linux

jvm: bin/spectest.jvm bin/wizeng.jvm bin/unittest.jvm bin/objdump.jvm

wave: bin/spectest.wasm bin/wizeng.wasm bin/unittest.wasm bin/objdump.wasm

v3i: bin/spectest.v3i bin/wizeng.v3i bin/unittest.v3i bin/objdump.v3i

ENGINE=src/engine/*.v3 src/engine/v3/*.v3 src/util/*.v3
MONITORS=src/monitors/*.v3
JIT=src/engine/compiler/*.v3
X86_64=src/engine/x86-64/*.v3
WAVE=src/modules/wave/*.v3
WASI=src/modules/wasi/*.v3
WASI_X86_64_LINUX=src/modules/wasi/x86-64-linux/*.v3
OBJDUMP=$(ENGINE) src/objdump.main.v3
SPECTEST=$(ENGINE) test/wasm-spec/*.v3 test/spectest.main.v3
UNITTEST=$(ENGINE) test/unittest/*.v3 test/wasm-spec/*.v3 test/unittest.main.v3
UNITTEST_X86_64_LINUX=test/unittest/x86-64-linux/*.v3
WIZENG=$(ENGINE) $(WAVE) $(WASI) src/wizeng.main.v3  src/modules/*.v3 src/modules/wizeng/*.v3

TAGS: $(WIZENG) $(WAVE) $(WASI) $(SPECTEST) $(UNITTEST) $(WASI_X86_64_LINUX) $(JIT) $(X86_64)
	vctags -e $(WIZENG) $(WAVE) $(WASI) $(SPECTEST) $(UNITTEST) $(WASI_X86_64_LINUX) $(JIT) $(X86_64)

# JVM targets
bin/unittest.jvm: $(UNITTEST) build.sh
	./build.sh unittest jvm

bin/spectest.jvm: $(SPECTEST) build.sh
	./build.sh spectest jvm

bin/wizeng.jvm: $(WIZENG) $(MONITORS) build.sh
	./build.sh wizeng jvm

bin/objdump.jvm: $(OBJDUMP) build.sh
	./build.sh objdump jvm

# WAVE targets
bin/unittest.wasm: $(UNITTEST) build.sh
	./build.sh unittest wave

bin/spectest.wasm: $(SPECTEST) build.sh
	./build.sh spectest wave

bin/wizeng.wasm: $(WIZENG) $(MONITORS) build.sh
	./build.sh wizeng wave

bin/objdump.wasm: $(OBJDUMP) build.sh
	./build.sh objdump wave

# x86-linux targets
bin/unittest.x86-linux: $(UNITTEST) build.sh
	./build.sh unittest x86-linux

bin/spectest.x86-linux: $(SPECTEST) build.sh
	./build.sh spectest x86-linux

bin/wizeng.x86-linux: $(WIZENG) $(MONITORS) build.sh
	./build.sh wizeng x86-linux

bin/objdump.x86-linux: $(OBJDUMP) build.sh
	./build.sh objdump x86-linux

# x86-64-linux targets
bin/unittest.x86-64-linux: $(UNITTEST) $(UNITTEST_X86_64_LINUX) $(X86_64) $(JIT) build.sh
	./build.sh unittest x86-64-linux

bin/spectest.x86-64-linux: $(SPECTEST) $(X86_64) $(JIT) build.sh
	./build.sh spectest x86-64-linux

bin/wizeng.x86-64-linux: $(WIZENG) $(MONITORS) $(WASI_X86_64_LINUX) $(X86_64) $(JIT) build.sh
	./build.sh wizeng x86-64-linux

bin/objdump.x86-64-linux: $(OBJDUMP) $(X86_64) build.sh
	./build.sh objdump x86-64-linux

# interpreter targets
bin/unittest.v3i: $(SPECTEST) build.sh
	./build.sh unittest v3i

bin/spectest.v3i: $(SPECTEST) build.sh
	./build.sh spectest v3i

bin/wizeng.v3i: $(WIZENG) $(MONITORS) build.sh
	./build.sh wizeng v3i

bin/objdump.v3i: $(OBJDUMP) build.sh
	./build.sh objdump v3i
