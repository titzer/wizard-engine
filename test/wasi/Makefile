RT=$(VIRGIL_LOC)/rt
UTIL=$(shell echo ${VIRGIL_LOC}/lib/util/*.v3)
N=$(RT)/native
W=$(RT)/wasi_snapshot_preview1
RT_FILES=$(shell echo $W/wasi_snapshot_preview1.v3 $W/System.v3 $N/NativeFileStream.v3)
WATS=$(shell find . -name "*.wat")
VS=$(shell find . -name "*.v3")
WASM_WATS=$(WATS:.wat=.wasm)
WASM_VS=$(VS:.v3=.wasm)

.PHONY: all
all: $(WASM_WATS) $(WASM_VS)

%.wasm: %.wat
	wat2wasm $< -o $@

%.wasm: %.v3
	v3c -target=wasm -entry-export=_start -main-export=_start -rt.files="$(RT_FILES)" -heap-size=64k $(UTIL) $<

.PHONY: clean
clean:
	rm -rf $(WASM_WATS) $(WASM_VS)