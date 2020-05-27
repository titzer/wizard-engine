# TODO: reenable native targets when floating point is supported
#all: bin/wizeng.x86-linux bin/unittest.x86-linux bin/spectest.x86-linux bin/wizeng.jvm bin/unittest.jvm bin/spectest.jvm

all: bin/wizeng.jvm bin/unittest.jvm bin/spectest.jvm

clean:
	rm -f bin/*

SRC=src/*.v3 src/*/*.v3
TEST=test/*/*.v3
SPEC=test/spec/*.v3

bin/wizeng.x86-linux: $(SRC)
	v3c-x86-linux -fp -output=bin/ -program-name=wizeng.x86-linux -heap-size=512m $(SRC)

bin/unittest.x86-linux: $(SRC) $(TEST)
	v3c-x86-linux -fp -output=bin/ -program-name=unittest.x86-linux -heap-size=512m $(SRC) $(TEST)

bin/spectest.x86-linux: $(SRC) $(TEST)
	v3c-x86-linux -fp -output=bin/ -program-name=spectest.x86-linux -heap-size=512m $(SRC) $(SPEC)

bin/wizeng.jvm: $(SRC)
	v3c-jar -fp -output=bin/ -program-name=wizeng $(SRC)
	mv bin/wizeng bin/wizeng.jvm

bin/unittest.jvm: $(SRC) $(TEST)
	v3c-jar -fp -output=bin/ -program-name=unittest $(SRC) $(TEST)
	mv bin/unittest bin/unittest.jvm

bin/spectest.jvm: $(SRC) $(TEST)
	v3c-jar -fp -output=bin/ -program-name=spectest $(SRC) $(SPEC)
	mv bin/spectest bin/spectest.jvm
