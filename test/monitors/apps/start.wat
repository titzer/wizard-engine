(module
  (global $f (mut i32) (i32.const -2))
  (func $start
    (global.set $f (i32.const 42)))
  (start $start)
  (func $main (export "main") (result i32)
    (global.get $f)
  )
)