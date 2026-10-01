;; A br_table arm containing an if/else, and an if arm containing a br_table. Every pre-existing
;; test keeps the two dispatch kinds in separate functions; this pins that a block probed with a
;; TableProbe and a block probed with a BoolProbe compose correctly inside one DAG.
;;
;; $table_of_ifs: br_table (3 labels) whose index-0 arm holds an if/else on $y.
;;   P1 x=0,y=0 ; P2 x=0,y!=0 ; P3 x=1 ; P4 x>=2 (default)  -> 4 paths
;;   main: P1 once, P2 twice, P3 three times, P4 four times.
;;   expected counts: a permutation of {1,2,3,4}, sum = 10 = calls to $table_of_ifs
;; $if_of_table: if whose then arm holds a 2-entry br_table on $y; the else arm falls through
;;   to the shared tail.
;;   P1 x!=0,y=0 (return 10) ; P2 x!=0,y!=0 (return 20) ; P3 x=0 (else -> tail 30)
;;   -> 3 paths. main: P1 once, P2 twice, P3 three times.
;;   expected counts: a permutation of {1,2,3}, sum = 6 = calls to $if_of_table
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
