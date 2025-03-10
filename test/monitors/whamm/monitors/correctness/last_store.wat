(module
  (import "wizeng" "puti" (func $puti (param i32)))
  (import "wizeng" "putc" (func $putc (param i32)))


  (global $g_i32 (mut i32) (i32.const 0))
  (global $g_i64 (mut i64) (i64.const 0))
  (global $g_f32 (mut f32) (f32.const 0))
  (global $g_f64 (mut f64) (f64.const 0))
  (global $g_v128 (mut v128) (v128.const i32x4 0 0 0 0))

  (func (export "wasm:opcode:i32.store(arg1)") (param i32)
    (global.set $g_i32 (local.get 0))
  )
  (func (export "wasm:opcode:i64.store(arg1)") (param i64)
    (global.set $g_i64 (local.get 0))
  )
  (func (export "wasm:opcode:f32.store(arg1)") (param f32)
    (global.set $g_f32 (local.get 0))
  )
  (func (export "wasm:opcode:f64.store(arg1)") (param f64)
    (global.set $g_f64 (local.get 0))
  )
  (func (export "wasm:opcode:v128.store(arg1)") (param v128)
    (global.set $g_v128 (local.get 0))
  )

  (func (export "wasm:exit")
    (call $puti (global.get $g_i32))
    (call $putc (i32.const 32))
    
    (call $putl (global.get $g_i64))
    (call $putc (i32.const 32))
    
    (call $puti (i32.reinterpret_f32 (global.get $g_f32)))
    (call $putc (i32.const 32))
    
    (call $putl (i64.reinterpret_f64 (global.get $g_f64)))
    (call $putc (i32.const 32))

    (call $puti (i32x4.extract_lane 0 (global.get $g_v128)))
    (call $putc (i32.const 32))
    
    (call $puti (i32x4.extract_lane 1 (global.get $g_v128)))
    (call $putc (i32.const 32))
    
    (call $puti (i32x4.extract_lane 2 (global.get $g_v128)))
    (call $putc (i32.const 32))
    
    (call $puti (i32x4.extract_lane 3 (global.get $g_v128)))
    (call $putc (i32.const 32))
    
    (call $putc (i32.const 10))

  )

  (func $putl (param i64)
    (call $puti (i32.wrap_i64 (local.get 0)))
    (call $putc (i32.const 32))
    
    (call $puti (i32.wrap_i64 (i64.shr_u (local.get 0) (i64.const 32))))
  )
)
