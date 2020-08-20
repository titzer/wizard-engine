# TODO: reenable native targets when floating point is supported
#all: bin/wizeng.x86-linux bin/unittest.x86-linux bin/spectest.x86-linux bin/wizeng.jvm bin/unittest.jvm bin/spectest.jvm

all: bin/spectest.jvm bin/wave.jvm bin/jawa.jvm

clean:
	rm -f bin/*
	cp scripts/* bin/

ENGINE=src/engine/*.v3 src/util/*.v3
UNITTEST=test/unittest/*.v3 test/spectest/*.v3 test/unittest.main.v3
SPECTEST=test/spectest/*.v3 test/spectest.main.v3
WAVE=src/wave/*.v3 src/wave.main.v3
JAWA=src/jawa/*.v3 src/jawa.main.v3

bin/unittest.jvm: $(ENGINE) $(UNITTEST) $(JAWA) # TODO: dependencies on jawa
	v3c-jar -fp -program-name=unittest -output=bin/ $(ENGINE) $(UNITTEST) $(JAWA)
	mv bin/unittest bin/unittest.jvm

bin/spectest.jvm: $(ENGINE) $(SPECTEST)
	v3c-jar -fp -program-name=spectest -output=bin/ $(ENGINE) $(SPECTEST)
	mv bin/spectest bin/spectest.jvm

bin/wave.jvm: $(ENGINE) $(WAVE)
	v3c-jar -fp -program-name=wave -output=bin/ $(ENGINE) $(WAVE)
	mv bin/wave bin/wave.jvm

bin/jawa.jvm: $(ENGINE) $(JAWA)
	v3c-jar -fp -program-name=jawa -output=bin/ $(ENGINE) $(JAWA)
	mv bin/jawa bin/jawa.jvm

bin/unittest.wasm: $(ENGINE) $(UNITTEST)
	v3c-wave -fp -program-name=unittest -output=bin/ $(ENGINE) $(UNITTEST)

bin/spectest.wasm: $(ENGINE) $(SPECTEST)
	v3c-wave -fp -program-name=spectest -output=bin/ $(ENGINE) $(SPECTEST)

bin/wave.wasm: $(ENGINE) $(WAVE)
	v3c-wave -fp -program-name=wave -output=bin/ $(ENGINE) $(WAVE)

bin/jawa.wasm: $(ENGINE) $(JAWA)
	v3c-wave -fp -program-name=jawa -output=bin/ $(ENGINE) $(JAWA)

