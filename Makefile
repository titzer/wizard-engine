# TODO: reenable native targets when floating point is supported
#all: bin/wizeng.x86-linux bin/unittest.x86-linux bin/spectest.x86-linux bin/wizeng.jvm bin/unittest.jvm bin/spectest.jvm

all: bin/unittest.jvm bin/spectest.jvm bin/wave.jvm

clean:
	rm -f bin/*
	cp scripts/* bin/

ENGINE=src/engine/*.v3 src/util/*.v3
UNITTEST=test/unittest/*.v3 test/spectest/*.v3 test/unittest.main.v3
SPECTEST=test/spectest/*.v3 test/spectest.main.v3
WAVE=src/wave/*.v3 src/wave.main.v3

bin/unittest.jvm: $(ENGINE) $(UNITTEST)
	v3c-jar -fp -output=bin/ -heap-size=512m $(ENGINE) $(UNITTEST)
	mv bin/unittest bin/unittest.jvm

bin/spectest.jvm: $(ENGINE) $(SPECTEST)
	v3c-jar -fp -output=bin/ $(ENGINE) $(SPECTEST)
	mv bin/spectest bin/spectest.jvm

bin/wave.jvm: $(ENGINE) $(WAVE)
	v3c-jar -fp -output=bin/ $(ENGINE) $(WAVE)
	mv bin/wave bin/wave.jvm
