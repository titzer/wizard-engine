(module
  (import "wizeng" "invoke0" (func $invoke0 (param funcref)))
  (table 3 funcref)
  (elem (i32.const 0) $foo $bar $baz)
  (func $bar)
  (func $foo
    (call $bar)
  )
  (func $baz
    (ref.func $foo)
    (call $invoke0)
  )
  (func $main (export "main")
    (ref.func $foo)
    (call $invoke0)
    (ref.func $bar)
    (call $invoke0)
    (ref.func $baz)
    (call $invoke0)
  )
)
