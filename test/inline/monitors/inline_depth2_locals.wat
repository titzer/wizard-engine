(module
  (global $count (mut i32) (i32.const 0))
  (func (export "wasm:func:entry(fid,pc)") (param i32 i32)
    (global.set $count (i32.add (global.get $count) (i32.const 1))))
)
