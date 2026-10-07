;; Test: traps in compressed continuations after they are resumed, and resuming a
;; consumed continuation after compression.
(module
  (type $fi_i (func (param i32) (result i32)))
  (type $ci_i (cont $fi_i))
  (type $f_i (func (result i32)))
  (type $c_i (cont $f_i))

  (tag $yield)
  (table $t 100 (ref null $c_i))

  ;; Yields, then traps if {x} is 0, otherwise returns {x}.
  (func $worker (param $x i32) (result i32)
    (suspend $yield)
    (if (i32.eqz (local.get $x)) (then (unreachable)))
    (local.get $x)
  )
  (elem declare func $worker)

  ;; Fills the table with suspended workers 1..99 and a trapping worker 0.
  (func $fill
    (local $i i32) (local $k (ref null $c_i))
    (loop $l
      (block $h (result (ref $c_i))
        (drop (resume $ci_i (on $yield $h) (local.get $i) (cont.new $ci_i (ref.func $worker))))
        (unreachable)
      )
      (local.set $k)
      (table.set $t (local.get $i) (local.get $k))
      (local.set $i (i32.add (local.get $i) (i32.const 1)))
      (br_if $l (i32.lt_u (local.get $i) (i32.const 100)))
    )
  )
  (func (export "trap") (result i32)
    (call $fill)
    (resume $c_i (table.get $t (i32.const 0)))
  )
  (func (export "sum") (result i32)
    (local $i i32) (local $sum i32)
    (call $fill)
    (local.set $i (i32.const 1))
    (loop $l
      (local.set $sum (i32.add (local.get $sum) (resume $c_i (table.get $t (local.get $i)))))
      (local.set $i (i32.add (local.get $i) (i32.const 1)))
      (br_if $l (i32.lt_u (local.get $i) (i32.const 100)))
    )
    (local.get $sum)
  )
  ;; Resumes worker 50 again after "sum" consumed it.
  (func (export "again") (result i32)
    (resume $c_i (table.get $t (i32.const 50)))
  )
)

(assert_trap (invoke "trap") "unreachable")
(assert_return (invoke "sum") (i32.const 4950))
(assert_trap (invoke "again") "continuation already consumed")
(assert_return (invoke "sum") (i32.const 4950))
