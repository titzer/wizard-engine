all: bin/wizeng.x86-linux bin/wizeng-unit.x86-linux bin/wizeng-spec.x86-linux

clean:
	rm -f bin/*

SRC=src/*.v3 src/*/*.v3
TEST=test/*/*.v3
SPEC=test/spec/*.v3

bin/wizeng.x86-linux: $(SRC)
	v3c-x86-linux -heap-size=512m -output=bin/ $(SRC)
	mv bin/wizeng bin/wizeng.x86-linux

bin/wizeng-unit.x86-linux: $(SRC) $(TEST)
	v3c-x86-linux -heap-size=512m -output=bin/ $(SRC) $(TEST)
	mv bin/wizeng bin/wizeng-unit.x86-linux

bin/wizeng-spec.x86-linux: $(SRC) $(TEST)
	v3c-x86-linux -heap-size=512m -output=bin/ $(SRC) $(SPEC)
	mv bin/wizeng bin/wizeng-spec.x86-linux
