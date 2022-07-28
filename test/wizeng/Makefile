all: loop_monitor0.wasm

%.wasm : %.wat
	../../wasm-spec/spec/interpreter/wasm $< -o $@
