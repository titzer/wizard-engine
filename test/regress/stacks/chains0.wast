;; Test: continuations that are chains of two stacks, whose top stacks are compressed
;; (their waiting parents cannot be) by churning through many other stacks.
(module
  (type $fi_i (func (param i32) (result i32)))
  (type $ci_i (cont $fi_i))
  (type $f_i (func (result i32)))
  (type $c_i (cont $f_i))
  (type $fv (func))
  (type $cv (cont $fv))

  (tag $yield (param i32))
  (tag $other)
  (table $t 8 (ref null $c_i))

  ;; Yields {x} to an outer handler, then returns {2 * x} plus a local.
  (func $inner (param $x i32) (result i32)
    (local $l i64)
    (local.set $l (i64.extend_i32_u (local.get $x)))
    (suspend $yield (local.get $x))
    (i32.add (i32.mul (local.get $x) (i32.const 2)) (i32.wrap_i64 (local.get $l)))
  )
  ;; Resumes {inner} with a handler for an unrelated tag, then adds 1.
  (func $mid (param $x i32) (result i32)
    (block $h (result (ref $c_i))
      (return (i32.add (i32.const 1)
        (resume $ci_i (on $other $h) (local.get $x) (cont.new $ci_i (ref.func $inner)))))
    )
    (unreachable)
  )
  (func $leaf (param $x i32) (result i32) (suspend $yield (local.get $x)) (unreachable))
  (elem declare func $inner $mid $leaf)

  ;; Starts {f(x)}, returning the continuation suspended at its first yield.
  (func $start (param $f (ref $ci_i)) (param $x i32) (result (ref $c_i))
    (local $k (ref null $c_i))
    (block $h (result i32 (ref $c_i))
      (drop (resume $ci_i (on $yield $h) (local.get $x) (local.get $f)))
      (unreachable)
    )
    (local.set $k)
    (drop)
    (ref.as_non_null (local.get $k))
  )
  (func $churn (param $n i32)
    (loop $l
      (drop (call $start (cont.new $ci_i (ref.func $leaf)) (local.get $n)))
      (br_if $l (local.tee $n (i32.sub (local.get $n) (i32.const 1))))
    )
  )

  (func (export "main") (param $rounds i32) (result i32)
    (local $i i32) (local $sum i32)
    (loop $round
      (local.set $i (i32.const 0))
      (loop $make
        (table.set $t (local.get $i) (call $start (cont.new $ci_i (ref.func $mid)) (local.get $i)))
        (call $churn (i32.const 50))
        (local.set $i (i32.add (local.get $i) (i32.const 1)))
        (br_if $make (i32.lt_u (local.get $i) (i32.const 8)))
      )
      (loop $finish
        (local.set $i (i32.sub (local.get $i) (i32.const 1)))
        (local.set $sum (i32.add (local.get $sum) (resume $c_i (table.get $t (local.get $i)))))
        (call $churn (i32.const 20))
        (br_if $finish (local.get $i))
      )
      (br_if $round (local.tee $rounds (i32.sub (local.get $rounds) (i32.const 1))))
    )
    (local.get $sum)
  )
)

;; Each round: sum over i < 8 of (3 * i + 1) = 92.
(assert_return (invoke "main" (i32.const 1)) (i32.const 92))
(assert_return (invoke "main" (i32.const 20)) (i32.const 1840))
