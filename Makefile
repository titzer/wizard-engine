
out/wizeng:
	v3c-x86-linux -output=bin/ src/*.v3 src/*/*.v3

unit:
	v3c -run src/*.v3 src/*/*.v3 test/unit/*.v3
