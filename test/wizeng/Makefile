all: loop_monitor0.wasm echo.wasm wasi_fd_write00.wasm

%.wasm : %.wat
	../../wasm-spec/spec/interpreter/wasm $< -o $@

%.wasm : %.v3
	v3c -target=wasm -entry-export=_start -main-export=_start -rt.files=$(VIRGIL_LOC)/rt/wasi_snapshot_preview1/wasi_snapshot_preview1.v3 -heap-size=64k $<
