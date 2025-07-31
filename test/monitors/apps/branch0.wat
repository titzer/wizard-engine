(module
  (start $start)
  (func $main (export "main")
    (call $test (i32.const 5))
  )
  (func $start
    (call $test (i32.const 3))
  )
  (func $test (param i32)
    (loop $l
      (local.set 0 (i32.sub (local.get 0) (i32.const 1)))
      (call $test_br_if (local.get 0))
      (call $test_br (local.get 0))
      (call $test_if (local.get 0))
      (call $test_br_table (local.get 0))
      (br_if $l (local.get 0))
    )
  )
  (func $test_br_if (param i32)
    (block
      (br_if 0 (local.get 0))
    )
    (block
      (block
        (br_if 1 (local.get 0))
      )
    )
  )
  (func $test_br (param i32)
    (block
      (br 0)
    )
    (block
      (block
        (br 1)
      )
    )
    (br 0)
  )
  (func $test_if (param i32)
    (if (local.get 0)
      (then (drop (i32.const 10)))
      (else (drop (i32.const 11)))
    )
    (if (local.get 0)
      (then (drop (i32.const 20)))
    )
    (if (local.get 0)
      (then )
      (else (drop (i32.const 21)))
    )
  )
  (func $test_br_table (param i32)
    (block
      (block
        (block
          (block
            (br_table 2 1 2 1 0 (local.get 0))
          )
	)
      )
    )
  )
)
