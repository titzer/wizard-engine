all: TAGS x86-linux x86-64-linux jvm

.PHONY: clean x86-linux x86-64-linux jvm
clean:
	rm -f bin/*
	cp scripts/* bin/

x86-linux: bin/spectest.x86-linux bin/wave.x86-linux bin/jawa.x86-linux bin/unittest.x86-linux bin/objdump.x86-linux bin/benchmark.x86-linux;

# TODO: bin/wave.x86-64-linux
x86-64-linux: bin/spectest.x86-64-linux bin/jawa.x86-64-linux bin/unittest.x86-64-linux bin/objdump.x86-64-linux bin/benchmark.x86-64-linux;

jvm: bin/spectest.jvm bin/wave.jvm bin/jawa.jvm bin/unittest.jvm bin/objdump.jvm;

ENGINE=src/engine/*.v3 src/engine/v3/*.v3 src/util/*.v3
X86_64=src/engine/x86-64/*.v3
WAVE=$(ENGINE) src/wave/*.v3 src/wave.main.v3
JAWA=$(ENGINE) src/jawa/*.v3 src/jawa.main.v3
OBJDUMP=$(ENGINE) src/objdump.main.v3
BENCHMARK=$(ENGINE) src/benchmark.main.v3
SPECTEST=$(ENGINE) test/spectest/*.v3 test/spectest.main.v3
UNITTEST=$(ENGINE) $(JAWA) test/unittest/*.v3 test/spectest/*.v3 test/unittest.main.v3

TAGS: $(ENGINE) $(WAVE) $(JAWA) $(SPECTEST) $(UNITTEST) $(X86_64)
	vctags -e $(ENGINE) $(WAVE) $(JAWA) $(SPECTEST) $(UNITTEST) $(X86_64)

# JVM targets
bin/unittest.jvm: $(UNITTEST)
	./build.sh unittest jvm

bin/spectest.jvm: $(SPECTEST)
	./build.sh spectest jvm

bin/wave.jvm: $(WAVE)
	./build.sh wave jvm

bin/jawa.jvm: $(JAWA)
	./build.sh jawa jvm

bin/objdump.jvm: $(OBJDUMP)
	./build.sh objdump jvm

# WAVE targets
bin/unittest.wasm: $(UNITTEST)
	./build.sh unittest wave

bin/spectest.wasm: $(SPECTEST)
	./build.sh spectest wave

bin/wave.wasm: $(WAVE)
	./build.sh wave wave

bin/jawa.wasm: $(JAWA)
	./build.sh jawa wave

bin/objdump.wasm: $(OBJDUMP)
	./build.sh objdump wave

# x86-linux targets
bin/unittest.x86-linux: $(UNITTEST)
	./build.sh unittest x86-linux

bin/spectest.x86-linux: $(SPECTEST)
	./build.sh spectest x86-linux

bin/wave.x86-linux: $(WAVE)
	./build.sh wave x86-linux

bin/jawa.x86-linux: $(JAWA)
	./build.sh jawa x86-linux

bin/objdump.x86-linux: $(OBJDUMP)
	./build.sh objdump x86-linux

bin/benchmark.x86-linux: $(BENCHMARK)
	./build.sh benchmark x86-linux

# x86-64-linux targets
bin/unittest.x86-64-linux: $(UNITTEST) $(X86_64)
	./build.sh unittest x86-64-linux

bin/spectest.x86-64-linux: $(SPECTEST) $(X86_64)
	./build.sh spectest x86-64-linux

bin/wave.x86-64-linux: $(WAVE) $(X86_64)
	./build.sh wave x86-64-linux

bin/jawa.x86-64-linux: $(JAWA) $(X86_64)
	./build.sh jawa x86-64-linux

bin/objdump.x86-64-linux: $(OBJDUMP) $(X86_64)
	./build.sh objdump x86-64-linux

bin/benchmark.x86-64-linux: $(BENCHMARK)
	./build.sh benchmark x86-64-linux

# interpreter targets
bin/unittest.int: $(SPECTEST)
	./build.sh unittest int

bin/spectest.int: $(SPECTEST)
	./build.sh spectest int

bin/wave.int: $(WAVE)
	./build.sh wave int

