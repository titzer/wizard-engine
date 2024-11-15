for file in *.wat; do wat2wasm "$file" -o "${file%.wat}.wasm"; done

for file in print_const_*.wasm; do wizeng --monitors=$file i32_const.wasm; done
for file in print_count_*.wasm; do wizeng --monitors=$file call.wasm; done
for file in print_add_*.wasm; do wizeng --monitors=$file i32_add.wasm; done
