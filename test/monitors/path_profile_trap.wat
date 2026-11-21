(module
  (func $f (export "f") (param $x i32) (result i32)
    (if (local.get $x) (then (unreachable)))
    (i32.const 7))
  (func (export "main") (drop (call $f (i32.const 0))))
)
