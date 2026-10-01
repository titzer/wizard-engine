;; Self-loops: a one-block loop, a loop whose `if` makes it an ordinary backedge, and a function
;; that loops forever and never reaches the exit.
(module
  (func $count_down (export "count_down") (param $n i32) (result i32)
    (loop $L
      (local.set $n (i32.sub (local.get $n) (i32.const 1)))
      (br_if $L (local.get $n)))
    (local.get $n))
  (func $with_if (export "with_if") (param $n i32) (result i32)
    (loop $L
      (local.set $n (i32.sub (local.get $n) (i32.const 1)))
      (if (i32.rem_s (local.get $n) (i32.const 2)) (then (nop)))
      (br_if $L (local.get $n)))
    (local.get $n))
  (func $forever (export "forever") (loop $L (br $L)))
  (func (export "main")
    (drop (call $count_down (i32.const 3)))
    (drop (call $with_if (i32.const 3))))
)
