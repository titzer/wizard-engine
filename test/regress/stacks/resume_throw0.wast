;; Test: many continuations suspended inside exception handlers are resumed with
;; {resume_throw} while compressed, and handle the exception.
(module
  (type $f_i (func (result i32)))
  (type $c_i (cont $f_i))
  (type $fi_i (func (param i32) (result i32)))
  (type $ci_i (cont $fi_i))

  (tag $yield)
  (tag $exn (param i32))
  (table $t 0 (ref null $c_i))

  (func $worker (param $x i32) (result i32)
    (local $v v128)
    (local.set $v (i32x4.splat (local.get $x)))
    (block $caught (result i32)
      (try_table (catch $exn $caught)
        (suspend $yield)
      )
      (unreachable)
    )
    ;; result: thrown value + x, checking the v128 survived
    (if (i32.ne (i32x4.extract_lane 1 (local.get $v)) (local.get $x)) (then (unreachable)))
    (i32.add (local.get $x))
  )
  (elem declare func $worker)

  (func (export "main") (param $n i32) (result i64)
    (local $i i32) (local $sum i64) (local $k (ref null $c_i))
    (drop (table.grow $t (ref.null $c_i) (local.get $n)))
    (loop $create
      (block $h (result (ref $c_i))
        (drop (resume $ci_i (on $yield $h) (local.get $i) (cont.new $ci_i (ref.func $worker))))
        (unreachable)
      )
      (local.set $k)
      (table.set $t (local.get $i) (local.get $k))
      (local.set $i (i32.add (local.get $i) (i32.const 1)))
      (br_if $create (i32.lt_u (local.get $i) (local.get $n)))
    )
    (local.set $i (i32.const 0))
    (loop $throw
      (local.set $sum (i64.add (local.get $sum) (i64.extend_i32_u
        (resume_throw $c_i $exn (i32.const 1000) (table.get $t (local.get $i))))))
      (local.set $i (i32.add (local.get $i) (i32.const 1)))
      (br_if $throw (i32.lt_u (local.get $i) (local.get $n)))
    )
    (local.get $sum)
  )
)

(assert_return (invoke "main" (i32.const 1)) (i64.const 1000))
(assert_return (invoke "main" (i32.const 10000)) (i64.const 59995000))
