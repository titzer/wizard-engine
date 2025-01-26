.PHONY: all

all: reflect.wasm

reflect.wasm: reflect.v3 ${WIZENG_LOC}/apis/wizeng.v3 ${WIZENG_LOC}/apis/whamm_comodule.v3
	v3c -target=wasm -heap-size=64k reflect.v3 ${WIZENG_LOC}/apis/wizeng.v3 ${WIZENG_LOC}/apis/whamm_comodule.v3
