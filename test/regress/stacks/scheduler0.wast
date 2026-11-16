;; Test: a round-robin scheduler of many coroutines held in a table, each yielding
;; many times, so that most of them are compressed while waiting to run.
(module
  (type $fi (func (param i32)))
  (type $ci (cont $fi))
  (type $fv (func))
  (type $cv (cont $fv))

  (tag $yield (param i32))
  (table $t 0 (ref null $cv))

  ;; Yields {id + k * 1000} for k = 0 .. rounds - 1, keeping its state in locals.
  (func $coro (param $id i32)
    (local $k i32) (local $acc i64)
    (loop $l
      (local.set $acc (i64.add (local.get $acc) (i64.extend_i32_u (local.get $k))))
      (suspend $yield (i32.add (local.get $id) (i32.mul (local.get $k) (i32.const 1000))))
      (local.set $k (i32.add (local.get $k) (i32.const 1)))
      (br_if $l (i32.lt_u (local.get $k) (global.get $rounds)))
    )
    ;; acc == 0 + 1 + ... + (rounds - 1)
    (if (i64.ne (i64.mul (local.get $acc) (i64.const 2))
                (i64.mul (i64.extend_i32_u (global.get $rounds)) (i64.extend_i32_u (i32.sub (global.get $rounds) (i32.const 1)))))
      (then (unreachable)))
  )
  (global $rounds (mut i32) (i32.const 0))
  (elem declare func $coro)

  ;; Runs the coroutine in slot {i} until it yields (checking the value) or finishes.
  (func $run (param $i i32) (param $expected i32) (result i32)
    (local $k (ref null $cv))
    (block $h (result i32 (ref $cv))
      (resume $cv (on $yield $h) (ref.as_non_null (table.get $t (local.get $i))))
      (table.set $t (local.get $i) (ref.null $cv))
      (return (i32.const 0))
    )
    (local.set $k)
    (table.set $t (local.get $i) (local.get $k))
    (if (i32.ne (local.get $expected)) (then (unreachable)))
    (i32.const 1)
  )

  (func (export "main") (param $n i32) (param $rounds i32) (result i32)
    (local $i i32) (local $k i32) (local $live i32)
    (global.set $rounds (local.get $rounds))
    (drop (table.grow $t (ref.null $cv) (local.get $n)))
    (loop $create
      (table.set $t (local.get $i) (cont.bind $ci $cv (local.get $i) (cont.new $ci (ref.func $coro))))
      (local.set $i (i32.add (local.get $i) (i32.const 1)))
      (br_if $create (i32.lt_u (local.get $i) (local.get $n)))
    )
    (loop $round
      (local.set $live (i32.const 0))
      (local.set $i (i32.const 0))
      (loop $each
        (local.set $live (i32.add (local.get $live)
          (call $run (local.get $i) (i32.add (local.get $i) (i32.mul (local.get $k) (i32.const 1000))))))
        (local.set $i (i32.add (local.get $i) (i32.const 1)))
        (br_if $each (i32.lt_u (local.get $i) (local.get $n)))
      )
      (local.set $k (i32.add (local.get $k) (i32.const 1)))
      (br_if $round (local.get $live))
    )
    (local.get $k)
  )
)

(assert_return (invoke "main" (i32.const 1) (i32.const 1)) (i32.const 2))
(assert_return (invoke "main" (i32.const 10) (i32.const 5)) (i32.const 6))
(assert_return (invoke "main" (i32.const 1000) (i32.const 100)) (i32.const 101))
