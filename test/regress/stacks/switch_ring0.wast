;; Test: a ring of many coroutines that pass control around with {switch}, so that
;; the target of each switch is usually compressed.
(module
  (rec
    (type $f1 (func (param i32 (ref null $c1)) (result i32)))
    (type $c1 (cont $f1))
  )
  (type $f2 (func (result i32)))
  (type $c2 (cont $f2))
  (tag $e (result i32))

  (table $ring 0 (ref null $c1))
  (global $n (mut i32) (i32.const 0))
  (global $pos (mut i32) (i32.const 0))
  (global $limit (mut i32) (i32.const 0))

  ;; Runs whenever {acc % n == id}; puts the previous coroutine back into the ring and
  ;; switches to the next one with {acc + 1}, until {acc} reaches the limit.
  (func $coro (type $f1)
    (local $acc i32) (local $prev (ref null $c1)) (local $id i32) (local $next (ref null $c1))
    (local.set $acc (local.get 0))
    (local.set $prev (local.get 1))
    (local.set $id (i32.rem_u (local.get $acc) (global.get $n)))
    (loop $l
      (if (i32.ne (i32.rem_u (local.get $acc) (global.get $n)) (local.get $id)) (then (unreachable)))
      (if (ref.is_null (local.get $prev)) (then) (else
        (table.set $ring
          (i32.rem_u (i32.add (global.get $pos) (i32.sub (global.get $n) (i32.const 1))) (global.get $n))
          (local.get $prev))))
      (if (i32.ge_u (local.get $acc) (global.get $limit)) (then (return (local.get $acc))))
      (global.set $pos (i32.rem_u (i32.add (global.get $pos) (i32.const 1)) (global.get $n)))
      (local.set $next (table.get $ring (global.get $pos)))
      (table.set $ring (global.get $pos) (ref.null $c1))
      (switch $c1 $e (i32.add (local.get $acc) (i32.const 1)) (local.get $next))
      (local.set $prev)
      (local.set $acc)
      (br $l)
    )
    (unreachable)
  )
  (elem declare func $coro)

  (func (export "main") (param $n i32) (param $limit i32) (result i32)
    (local $i i32) (local $first (ref null $c1))
    (global.set $n (local.get $n))
    (global.set $limit (local.get $limit))
    (global.set $pos (i32.const 0))
    (drop (table.grow $ring (ref.null $c1) (local.get $n)))
    (loop $create
      (table.set $ring (local.get $i) (cont.new $c1 (ref.func $coro)))
      (local.set $i (i32.add (local.get $i) (i32.const 1)))
      (br_if $create (i32.lt_u (local.get $i) (local.get $n)))
    )
    (local.set $first (table.get $ring (i32.const 0)))
    (table.set $ring (i32.const 0) (ref.null $c1))
    (resume $c2 (on $e switch) (cont.bind $c1 $c2 (i32.const 0) (ref.null $c1) (local.get $first)))
  )
)

(assert_return (invoke "main" (i32.const 1) (i32.const 0)) (i32.const 0))
(assert_return (invoke "main" (i32.const 3) (i32.const 10)) (i32.const 10))
(assert_return (invoke "main" (i32.const 1000) (i32.const 100000)) (i32.const 100000))
