# TODO: reenable native targets when floating point is supported
#all: bin/wizeng.x86-linux bin/unittest.x86-linux bin/spectest.x86-linux bin/wizeng.jvm bin/unittest.jvm bin/spectest.jvm

all: bin/spectest.jvm bin/wave.jvm bin/jawa.jvm bin/spectest.x86-linux bin/wave.x86-linux bin/jawa.x86-linux

clean:
	rm -f bin/*
	cp scripts/* bin/

ENGINE=src/engine/*.v3 src/util/*.v3
WAVE=$(ENGINE) src/wave/*.v3 src/wave.main.v3
JAWA=$(ENGINE) src/jawa/*.v3 src/jawa.main.v3
SPECTEST=$(ENGINE) test/spectest/*.v3 test/spectest.main.v3
UNITTEST=$(ENGINE) $(JAWA) test/unittest/*.v3 test/spectest/*.v3 test/unittest.main.v3

# JVM targets
bin/unittest.jvm: $(UNITTEST)
	./build.sh unittest jvm

bin/spectest.jvm: $(SPECTEST)
	./build.sh spectest jvm

bin/wave.jvm: $(WAVE)
	./build.sh wave jvm

bin/jawa.jvm: $(JAWA)
	./build.sh jawa jvm

# WAVE targets
bin/unittest.wasm: $(UNITTEST)
	./build.sh unittest wave

bin/spectest.wasm: $(SPECTEST)
	./build.sh spectest wave

bin/wave.wasm: $(WAVE)
	./build.sh wave wave

bin/jawa.wasm: $(JAWA)
	./build.sh jawa wave

# x86-linux targets
bin/unittest.x86-linux: $(UNITTEST)
	./build.sh unittest x86-linux

bin/spectest.x86-linux: $(SPECTEST)
	./build.sh spectest x86-linux

bin/wave.x86-linux: $(WAVE)
	./build.sh wave x86-linux

bin/jawa.x86-linux: $(JAWA)
	./build.sh jawa x86-linux

