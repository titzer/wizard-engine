;; INNER_CALIBRATION = 2200
(module
  (memory (export "memory") 1)

  ;; Tail-recursive helper: fib_tail(n, a, b)
  (func $fib_tail (param $n i32) (param $a i32) (param $b i32) (result i32)
    (if (result i32)
      (i32.eqz (local.get $n))
      (then
        (return (local.get $a))
      )
      (else
        (return_call $fib_tail
          (i32.sub (local.get $n) (i32.const 1))
          (local.get $b)
          (i32.add (local.get $a) (local.get $b))
        )
      )
    )
  )
  (func $fib (param $n i32) (result i32)
    (return_call $fib_tail
      (local.get $n)
      (i32.const 1)
      (i32.const 1)
    )
  )
  (func $main (export "main")
    (drop (call $fib (i32.const 220000 (;$INNER_ITERATIONS;))))
  )

  (export "_start" (func $main))
)
