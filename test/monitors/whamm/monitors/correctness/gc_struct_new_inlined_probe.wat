(module
  (type $s (struct (field i32)))
  (export "wasm:opcode:call(arg0)" (func $probe))
  (func $probe (param $x i32)
    (drop (struct.new $s (local.get $x)))
  )
)
