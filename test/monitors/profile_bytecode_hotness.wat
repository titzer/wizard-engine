(module
  (memory (export "memory") 1)
  ;; guest bytecode: opcode 0 = A (cheap), opcode 1 = B (expensive), opcodes 2-6 unused
  ;; padding cases (needed so the br_table has >= 7 targets, matching switch_size=7),
  ;; opcode 7+ = HALT (default case).
  ;; sequence executed: A B A B A B HALT
  (data (i32.const 1024) "\00\01\00\01\00\01\07")

  (func $costA
    (local $x i32)
    (local.set $x (i32.add (i32.const 1) (i32.const 1)))
  )

  (func $costB
    (local $x i32)
    (local.set $x (i32.add (i32.const 1) (i32.const 1)))
    (local.set $x (i32.add (local.get $x) (i32.const 1)))
    (local.set $x (i32.add (local.get $x) (i32.const 1)))
    (local.set $x (i32.add (local.get $x) (i32.const 1)))
    (local.set $x (i32.add (local.get $x) (i32.const 1)))
    (local.set $x (i32.add (local.get $x) (i32.const 1)))
    (local.set $x (i32.add (local.get $x) (i32.const 1)))
    (local.set $x (i32.add (local.get $x) (i32.const 1)))
    (local.set $x (i32.add (local.get $x) (i32.const 1)))
    (local.set $x (i32.add (local.get $x) (i32.const 1)))
  )

  (func $main (export "main") (result i32)
    (local $pc i32)
    (local $op i32)
    (local.set $pc (i32.const 1024))
    (block $exit
      (loop $top
        (local.set $op (i32.load8_u (local.get $pc)))
        (block $bHalt
          (block $bDummy6
            (block $bDummy5
              (block $bDummy4
                (block $bDummy3
                  (block $bDummy2
                    (block $bB
                      (block $bA
                        (br_table $bA $bB $bDummy2 $bDummy3 $bDummy4 $bDummy5 $bDummy6 $bHalt (local.get $op))
                      )
                      (call $costA)
                      (local.set $pc (i32.add (local.get $pc) (i32.const 1)))
                      (br $top)
                    )
                    (call $costB)
                    (local.set $pc (i32.add (local.get $pc) (i32.const 1)))
                    (br $top)
                  )
                  (local.set $pc (i32.add (local.get $pc) (i32.const 1)))
                  (br $top)
                )
                (local.set $pc (i32.add (local.get $pc) (i32.const 1)))
                (br $top)
              )
              (local.set $pc (i32.add (local.get $pc) (i32.const 1)))
              (br $top)
            )
            (local.set $pc (i32.add (local.get $pc) (i32.const 1)))
            (br $top)
          )
          (local.set $pc (i32.add (local.get $pc) (i32.const 1)))
          (br $top)
        )
        (br $exit)
      )
    )
    (i32.const 0)
  )
)
