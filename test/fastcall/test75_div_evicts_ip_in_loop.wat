;; A fast:-exported function with a loop that accumulates 50 integer
;; divisions.
(module
  (func $f (export "fast:f") (param i32) (result i32)
    (local $i i32) (local $acc i32)
    (local.set $i (i32.const 0))
    (local.set $acc (i32.const 0))
    (loop $lp
      (local.set $acc (i32.add (local.get $acc) (i32.div_u (i32.const 100) (i32.add (local.get $i) (i32.const 1)))))
      (local.set $i (i32.add (local.get $i) (i32.const 1)))
      (br_if $lp (i32.lt_s (local.get $i) (i32.const 50)))
    )
    local.get $acc
  )
  (func (export "main") (result i32)
    i32.const 0
    call $f
  )
)
