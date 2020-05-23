all: bin/wizeng.x86-linux bin/unittest.x86-linux bin/spectest.x86-linux bin/wizeng.jvm bin/unittest.jvm bin/spectest.jvm

clean:
	rm -f bin/*

SRC=src/*.v3 src/*/*.v3
TEST=test/*/*.v3
SPEC=test/spec/*.v3

bin/wizeng.x86-linux: $(SRC)
	v3c-x86-linux -heap-size=512m -output=bin/ $(SRC)
	mv bin/wizeng bin/wizeng.x86-linux

bin/unittest.x86-linux: $(SRC) $(TEST)
	v3c-x86-linux -heap-size=512m -output=bin/ $(SRC) $(TEST)
	mv bin/wizeng bin/unittest.x86-linux

bin/spectest.x86-linux: $(SRC) $(TEST)
	v3c-x86-linux -heap-size=512m -output=bin/ $(SRC) $(SPEC)
	mv bin/wizeng bin/spectest.x86-linux

bin/wizeng.jvm: $(SRC)
	v3c-jar -output=bin/ $(SRC)
	mv bin/wizeng bin/wizeng.jvm

bin/unittest.jvm: $(SRC) $(TEST)
	v3c-jar -output=bin/ $(SRC) $(TEST)
	mv bin/wizeng bin/unittest.jvm

bin/spectest.jvm: $(SRC) $(TEST)
	v3c-jar -output=bin/ $(SRC) $(SPEC)
	mv bin/wizeng bin/spectest.jvm
