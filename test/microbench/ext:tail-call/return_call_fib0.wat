;; INNER_CALIBRATION = 77000
(module
  (func $fib_tail (param $n i32) (param $a i32) (param $b i32) (result i32)
    ;; if (n == 0) return a;
    local.get $n
    i32.eqz
    if (result i32)
      local.get $a
    else
      ;; tail-recursive call: fib_tail(n - 1, b, a + b)
      local.get $n
      i32.const 1
      i32.sub
      local.get $b
      local.get $a
      local.get $b
      i32.add
      return_call $fib_tail
    end
  )

  (func $fib (param $n i32) (result i32)
    ;; call helper: fib_tail(n, 0, 1)
    local.get $n
    i32.const 0
    i32.const 1
    return_call $fib_tail
  )

  (func $main (export "main")
    (drop (call $fib (i32.const 1 (;$INNER_ITERATIONS;))))
  )
)
