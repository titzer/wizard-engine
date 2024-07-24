(module
  (func $main (export "main")
    (call $start)
  )
  (func $start (export "_start")
    (i32.add (i32.add (i32.const 1) (i32.const 40)) (i32.const 1))
    drop
  )
)
