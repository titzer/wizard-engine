;; Test: many live continuations, each suspended mid-execution with its own state,
;; held in a table and then resumed (in reverse order) to completion.
(module
  (type $fi (func (param i32) (result i32)))
  (type $ci (cont $fi))
  (type $f_i (func (result i32)))
  (type $c_i (cont $f_i))

  (tag $yield)
  (table $t 0 (ref null $c_i))

  ;; Suspends with locals of several types live, then checks them and returns 3 * x.
  (func $worker (param $x i32) (result i32)
    (local $l i64) (local $d f64) (local $v v128)
    (local.set $l (i64.extend_i32_u (local.get $x)))
    (local.set $d (f64.convert_i32_u (local.get $x)))
    (local.set $v (i32x4.splat (local.get $x)))
    (suspend $yield)
    (if (i64.ne (local.get $l) (i64.extend_i32_u (local.get $x))) (then (unreachable)))
    (if (f64.ne (local.get $d) (f64.convert_i32_u (local.get $x))) (then (unreachable)))
    (if (i32.ne (i32x4.extract_lane 2 (local.get $v)) (local.get $x)) (then (unreachable)))
    (i32.mul (local.get $x) (i32.const 3))
  )
  (elem declare func $worker)

  (func (export "main") (param $n i32) (result i64)
    (local $i i32) (local $sum i64) (local $k (ref null $c_i))
    (drop (table.grow $t (ref.null $c_i) (local.get $n)))
    (loop $create
      (block $h (result (ref $c_i))
        (drop (resume $ci (on $yield $h) (local.get $i) (cont.new $ci (ref.func $worker))))
        (unreachable)
      )
      (local.set $k)
      (table.set $t (local.get $i) (local.get $k))
      (local.set $i (i32.add (local.get $i) (i32.const 1)))
      (br_if $create (i32.lt_u (local.get $i) (local.get $n)))
    )
    (loop $finish
      (local.set $i (i32.sub (local.get $i) (i32.const 1)))
      (local.set $sum (i64.add (local.get $sum)
        (i64.extend_i32_u (resume $c_i (table.get $t (local.get $i))))))
      (table.set $t (local.get $i) (ref.null $c_i))
      (br_if $finish (local.get $i))
    )
    (local.get $sum)
  )
)

(assert_return (invoke "main" (i32.const 1)) (i64.const 0))
(assert_return (invoke "main" (i32.const 100)) (i64.const 14850))
(assert_return (invoke "main" (i32.const 100000)) (i64.const 14999850000))
