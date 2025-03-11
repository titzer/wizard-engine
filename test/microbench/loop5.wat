(module
  (func $sum_loop (param $n i32) (result i32)
    (local $i i32)  ;; loop counter
    (local $sum i32) ;; accumulator
    (local.set $i (i32.const 0)) ;; initialize counter
    (local.set $sum (i32.const 0)) ;; initialize sum
    (loop $loop
      (if (i32.ge_s (local.get $i) (local.get $n))
        (then (return (local.get $sum)))
      )
      (local.set $sum (i32.add (local.get $sum) (local.get $i)))
      (local.set $i (i32.add (local.get $i) (i32.const 1)))
      (br $loop)
    )
    (local.get $sum)
  )
  (func (export "main") (drop (call $sum_loop (i32.const 11))))
)
