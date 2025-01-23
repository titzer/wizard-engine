(module
  (func $f32_add_loop0 (param $n i32) (result f32)
    (local $i i32)         ;; loop counter
    (local $result f32)    ;; accumulator
    ;; Initialize locals
    (local.set $i (i32.const 0))
    (local.set $result (f32.const 0.0))
    (loop $loop
      ;; Exit condition
      (if (i32.ge_s (local.get $i) (local.get $n))
        (then (return (local.get $result)))
      )
      ;; Perform nested f32.add operations directly using the stack
      (local.set $result
        (f32.add
          (local.get $result)
          (f32.add
            (f32.add
              (f32.add (f32.const 3.14) (f32.const 2.71))
              (f32.const 1.62))
            (f32.const 0.33)
          )
        )
      )
      ;; Increment loop counter
      (local.set $i (i32.add (local.get $i) (i32.const 1)))
      ;; Continue the loop
      (br $loop)
    )
    ;; Return final result (fallback in case loop finishes naturally)
    (local.get $result)
  )

  (func $f32_add_loop1 (param $n i32) (result f32)
    (local $i i32)          ;; loop counter
    (local $result f32)     ;; accumulator
    (local $c1 f32)         ;; constant 1
    (local $c2 f32)         ;; constant 2
    (local $c3 f32)         ;; constant 3
    (local $c4 f32)         ;; constant 4
    ;; Initialize locals
    (local.set $i (i32.const 0))
    (local.set $result (f32.const 0.0))
    (local.set $c1 (f32.const 3.14))
    (local.set $c2 (f32.const 2.71))
    (local.set $c3 (f32.const 1.62))
    (local.set $c4 (f32.const 0.33))
    (loop $loop
      ;; Exit condition
      (if (i32.ge_s (local.get $i) (local.get $n))
        (then (return (local.get $result)))
      )
      ;; Perform f32.add operations using preloaded constants
      (local.set $result
        (f32.add
          (local.get $result)
          (f32.add
            (f32.add
              (f32.add (local.get $c1) (local.get $c2))
              (local.get $c3))
            (local.get $c4)
          )
        )
      )
      ;; Increment loop counter
      (local.set $i (i32.add (local.get $i) (i32.const 1)))
      ;; Continue the loop
      (br $loop)
    )
    ;; Return final result (fallback in case loop finishes naturally)
    (local.get $result)
  )

  (func $f32_add_loop2 (param $n i32) (result f32)
    (local $i i32)          ;; loop counter
    (local $result f32)     ;; accumulator
    ;; Initialize locals
    (local.set $i (i32.const 0))
    (local.set $result (f32.const 0.0))
    (loop $loop
      ;; Exit condition
      (if (i32.ge_s (local.get $i) (local.get $n))
        (then (return (local.get $result)))
      )
      ;; Perform a nested series of f32.add operations
      (local.set $result
        (f32.add
          (f32.add
            (f32.add
              (f32.add (local.get $result) (f32.const 3.14))
              (f32.const 2.71))
            (f32.add
              (f32.const 1.62) (f32.const 0.33)))
          (f32.const 4.56)
        )
      )
      ;; Increment loop counter
      (local.set $i (i32.add (local.get $i) (i32.const 1)))
      ;; Continue the loop
      (br $loop)
    )
    ;; Return final result (fallback in case loop finishes naturally)
    (local.get $result)
  )

  (func $f32_add_loop3 (param $n i32) (result f32)
    (local $result f32) ;; accumulator
    ;; Initialize locals
    (local.set $result (f32.const 0.0))
    (loop $loop
      ;; Exit condition: if counter hits zero, exit loop
      (if (i32.eqz (local.tee $n (i32.sub (local.get $n) (i32.const 1))))
        (then (return (local.get $result)))
      )
      ;; Perform a nested series of f32.add operations
      (local.set $result
        (f32.add
          (f32.add
            (f32.add
              (f32.add (local.get $result) (f32.const 3.14))
              (f32.const 2.71))
            (f32.add
              (f32.const 1.62) (f32.const 0.33)))
          (f32.const 4.56)
        )
      )
      ;; Continue the loop
      (br $loop)
    )
    (local.get $result)
  )

  (func $f32_add_loop4 (param $n i32) (result f32)
    (local $result f32) ;; accumulator
    ;; Initialize locals
    (local.set $result (f32.const 0.0))
    (loop $loop
      ;; Perform a nested series of f32.add operations
      (local.set $result
        (f32.add
          (f32.add
            (f32.add
              (f32.add (local.get $result) (f32.const 3.14))
              (f32.const 2.71))
            (f32.add
              (f32.const 1.62) (f32.const 0.33)))
          (f32.const 4.56)
        )
      )
      ;; Decrement counter and branch if not zero
      (br_if $loop
        (local.tee $n (i32.sub (local.get $n) (i32.const 1)))
      )
    )
    ;; Return final result
    (local.get $result)
  )

  (func (export "main") (drop (call $f32_add_loop4 (i32.const 11))))
)
