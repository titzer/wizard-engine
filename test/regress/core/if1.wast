(module
  (func (export "if") (result i32)
    (local $i i32)
    (local.set $i (i32.const 0))
    (block
      (if $l
        (i32.const 1)
        (then (br $l) (local.set $i (i32.const 666)))
      )
      (local.set $i (i32.add (local.get $i) (i32.const 1)))
      (if $l
        (i32.const 1)
        (then (br $l) (local.set $i (i32.const 666)))
        (else (local.set $i (i32.const 888)))
      )
      (local.set $i (i32.add (local.get $i) (i32.const 1)))
      (if $l
        (i32.const 1)
        (then (br $l) (local.set $i (i32.const 666)))
        (else (local.set $i (i32.const 888)))
      )
      (local.set $i (i32.add (local.get $i) (i32.const 1)))
      (if $l
        (i32.const 0)
        (then (local.set $i (i32.const 888)))
        (else (br $l) (local.set $i (i32.const 666)))
      )
      (local.set $i (i32.add (local.get $i) (i32.const 1)))
      (if $l
        (i32.const 0)
        (then (local.set $i (i32.const 888)))
        (else (br $l) (local.set $i (i32.const 666)))
      )
      (local.set $i (i32.add (local.get $i) (i32.const 1)))
    )
    (local.get $i)
  )
)
(assert_return (invoke "if") (i32.const 0x5))
