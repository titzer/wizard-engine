;; A br_table arm containing an if/else, and an if arm containing a br_table.
(module
  (func $table_of_ifs (export "table_of_ifs") (param $x i32) (param $y i32) (result i32)
    (block $L2
      (block $L1
        (block $L0
          (br_table $L0 $L1 $L2 (local.get $x))
        )
        (return (if (result i32) (local.get $y) (then (i32.const 1)) (else (i32.const 2))))
      )
      (return (i32.const 3))
    )
    (i32.const 4))
  (func $if_of_table (export "if_of_table") (param $x i32) (param $y i32) (result i32)
    (if (local.get $x)
      (then
        (block $M1
          (block $M0
            (br_table $M0 $M1 (local.get $y))
          )
          (return (i32.const 10))
        )
        (return (i32.const 20)))
      (else (nop)))
    (i32.const 30))
  (func (export "main")
    (drop (call $table_of_ifs (i32.const 0) (i32.const 0)))
    (drop (call $table_of_ifs (i32.const 0) (i32.const 1)))
    (drop (call $table_of_ifs (i32.const 0) (i32.const 1)))
    (drop (call $table_of_ifs (i32.const 1) (i32.const 0)))
    (drop (call $table_of_ifs (i32.const 1) (i32.const 0)))
    (drop (call $table_of_ifs (i32.const 1) (i32.const 0)))
    (drop (call $table_of_ifs (i32.const 5) (i32.const 0)))
    (drop (call $table_of_ifs (i32.const 5) (i32.const 0)))
    (drop (call $table_of_ifs (i32.const 5) (i32.const 0)))
    (drop (call $table_of_ifs (i32.const 5) (i32.const 0)))
    (drop (call $if_of_table (i32.const 1) (i32.const 0)))
    (drop (call $if_of_table (i32.const 1) (i32.const 1)))
    (drop (call $if_of_table (i32.const 1) (i32.const 1)))
    (drop (call $if_of_table (i32.const 0) (i32.const 0)))
    (drop (call $if_of_table (i32.const 0) (i32.const 0)))
    (drop (call $if_of_table (i32.const 0) (i32.const 0))))
)
