;; Branches to outer labels (depth > 0), including an unconditional `br` out of three levels.
(module
  (func $f (export "f") (param $x i32) (result i32)
    (local $r i32)
    (block $out
      (block $mid
        (block $in
          (br_if $out (i32.eqz (local.get $x)))
          (br_if $mid (i32.eq (local.get $x) (i32.const 1)))
          (local.set $r (i32.const 100))
        )
        (local.set $r (i32.add (local.get $r) (i32.const 10)))
      )
      (local.set $r (i32.add (local.get $r) (i32.const 1)))
    )
    (local.get $r))
  (func $g (export "g") (param $x i32) (result i32)
    (local $r i32)
    (block $a
      (block $b
        (block $c
          (br_if $b (local.get $x))
          (br $a)
        )
        (local.set $r (i32.const 2))
      )
      (local.set $r (i32.const 3))
    )
    (local.get $r))
  (func (export "main")
    (drop (call $f (i32.const 0)))
    (drop (call $f (i32.const 1)))
    (drop (call $f (i32.const 1)))
    (drop (call $f (i32.const 5)))
    (drop (call $f (i32.const 5)))
    (drop (call $f (i32.const 5)))
    (drop (call $g (i32.const 0)))
    (drop (call $g (i32.const 0)))
    (drop (call $g (i32.const 0)))
    (drop (call $g (i32.const 1))))
)
