(module
  (func $main (export "main")
    (call $start)
  )
  (func $start (export "_start")
    (call $test_if (i32.const 1))
    (call $test_if (i32.const 11))
    (call $test_if (i32.const 0))
    
    (call $test_br_if (i32.const 0))
    (call $test_br_if (i32.const 0))
    (call $test_br_if (i32.const 44))
    
    (call $test_br_table (i32.const 0))
    (call $test_br_table (i32.const 1))
    (call $test_br_table (i32.const 2))
    (call $test_br_table (i32.const 2))
    (call $test_br_table (i32.const 3))
    (call $test_br_table (i32.const 4))

    (call $test_br_on_null (ref.null extern))
    (call $test_br_on_non_null (ref.null extern))

    ;; TODO: test br_on_cast
  )
  (func $test_if (param i32)
    (if (local.get 0) (then) (else))
  )
  (func $test_br_if (param i32)
    (br_if 0 (local.get 0))
  )
  (func $test_br_table (param i32)
      (block
        (block
          (block
            (block
              (br_table 3 2 1 0 (local.get 0))
            )
          )
        )
      )
  )
  (func $test_br_on_null (param externref)
    (br_on_null 0 (local.get 0))
    drop
  )
  
  (func $test_br_on_non_null (param externref)
    (block (result externref)
      (br_on_non_null 0 (local.get 0))
      (br 1)
    )
    drop
  )
  
  (func $foo (export "foo")
    (local $cnt i32)
    (local.set $cnt (i32.const 20))
    (loop $l
      (local.set $cnt (i32.sub (local.get $cnt) (i32.const 1)))
	    (br_if $l (local.get $cnt))
    )
  )
)
