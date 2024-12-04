(module
  (import "wizeng" "puts" (func $puts (param i32 i32)))
  (memory (export "mem") 1 1)
  (data (i32.const 0x00) "if you are reading this, you failed the test")
  (data (i32.const 0x80) "success is earned, not given\n")

  (func (export "$false_call") (param i32 i32) (result i32)
    (i32.const 0)
  )
  (func (export "wasm:opcode:call/$false_call(fid, pc)/")
    (call $puts (i32.const 0x00) (i32.const 45))
  )

  (func (export "$false_i32_const") (param i32 i32) (result i32)
    (i32.const 0)
  )
  (func (export "wasm:opcode:i32.const/$false_i32_const(fid, pc)/")
    (call $puts (i32.const 0x00) (i32.const 45))
  )

  (func (export "$false_i32_load") (param i32 i32) (result i32)
    (i32.const 0)
  )
  (func (export "wasm:opcode:i32.load/$false_i32_load(fid, pc)/")
    (call $puts (i32.const 0x00) (i32.const 45))
  )

  (func (export "$false_local_get") (param i32 i32) (result i32)
    (i32.const 0)
  )
  (func (export "wasm:opcode:local.get/$false_local_get(fid, pc)/")
    (call $puts (i32.const 0x00) (i32.const 45))
  )

  (func (export "wasm:exit")
    (call $puts (i32.const 0x80) (i32.const 29))
  )

)

