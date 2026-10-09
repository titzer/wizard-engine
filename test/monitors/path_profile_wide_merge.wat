;; A br_table whose five arms all branch to one join block, which then continues.
(module
  (func $merge5 (export "merge5") (param $x i32) (result i32)
    (local $r i32)
    (block $done
      (block $L4
        (block $L3
          (block $L2
            (block $L1
              (block $L0
                (br_table $L0 $L1 $L2 $L3 $L4 (local.get $x))
              )
              (local.set $r (i32.const 10)) (br $done)
            )
            (local.set $r (i32.const 20)) (br $done)
          )
          (local.set $r (i32.const 30)) (br $done)
        )
        (local.set $r (i32.const 40)) (br $done)
      )
      (local.set $r (i32.const 50))
    )
    (i32.add (local.get $r) (i32.const 1)))
  (func (export "main")
    (drop (call $merge5 (i32.const 0)))
    (drop (call $merge5 (i32.const 1)))
    (drop (call $merge5 (i32.const 1)))
    (drop (call $merge5 (i32.const 2)))
    (drop (call $merge5 (i32.const 2)))
    (drop (call $merge5 (i32.const 2)))
    (drop (call $merge5 (i32.const 3)))
    (drop (call $merge5 (i32.const 3)))
    (drop (call $merge5 (i32.const 3)))
    (drop (call $merge5 (i32.const 3)))
    (drop (call $merge5 (i32.const 9)))
    (drop (call $merge5 (i32.const 9)))
    (drop (call $merge5 (i32.const 9)))
    (drop (call $merge5 (i32.const 9)))
    (drop (call $merge5 (i32.const 9))))
)
