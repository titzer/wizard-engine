;; if/else nested three levels deep, each in its parent's then arm.
(module
  (func $f (export "f") (param $x i32) (param $y i32) (param $z i32) (result i32)
    (if (result i32) (local.get $x)
      (then
        (if (result i32) (local.get $y)
          (then
            (if (result i32) (local.get $z)
              (then (i32.const 1))
              (else (i32.const 2))))
          (else (i32.const 3))))
      (else (i32.const 4))))
  (func (export "main")
    (drop (call $f (i32.const 0) (i32.const 0) (i32.const 0)))
    (drop (call $f (i32.const 1) (i32.const 0) (i32.const 0)))
    (drop (call $f (i32.const 1) (i32.const 0) (i32.const 0)))
    (drop (call $f (i32.const 1) (i32.const 1) (i32.const 0)))
    (drop (call $f (i32.const 1) (i32.const 1) (i32.const 0)))
    (drop (call $f (i32.const 1) (i32.const 1) (i32.const 0)))
    (drop (call $f (i32.const 1) (i32.const 1) (i32.const 1)))
    (drop (call $f (i32.const 1) (i32.const 1) (i32.const 1)))
    (drop (call $f (i32.const 1) (i32.const 1) (i32.const 1)))
    (drop (call $f (i32.const 1) (i32.const 1) (i32.const 1))))
)
