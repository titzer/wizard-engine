;; Test: stacks unwound by exceptions thrown into continuations with {resume_throw} are
;; recycled, even though the consumed continuations referring to them are kept alive.
(module
  (type $f_i (func (result i32)))
  (type $c_i (cont $f_i))
  (type $fi_i (func (param i32) (result i32)))
  (type $ci_i (cont $fi_i))

  (tag $yield)
  (tag $exn (param i32))
  (table $t 0 (ref null $c_i))

  ;; Suspends without a handler, so a thrown exception escapes.
  (func $leaf (param $x i32) (result i32)
    (suspend $yield)
    (local.get $x)
  )
  ;; Resumes {leaf} on a child stack, catching exceptions that escape it.
  (func $catcher (param $x i32) (result i32)
    (block $c (result i32)
      (try_table (catch $exn $c)
        (return (resume $ci_i (local.get $x) (cont.new $ci_i (ref.func $leaf)))))
      (unreachable))
    (i32.add (local.get $x))
  )
  (elem declare func $leaf $catcher)

  ;; Runs {f(x)} until it suspends, returning the continuation.
  (func $start (param $f (ref $ci_i)) (param $x i32) (result (ref $c_i))
    (local $k (ref null $c_i))
    (block $h (result (ref $c_i))
      (drop (resume $ci_i (on $yield $h) (local.get $x) (local.get $f)))
      (unreachable))
    (local.set $k)
    (ref.as_non_null (local.get $k))
  )
  (func $grow (param $n i32)
    (if (i32.lt_u (table.size $t) (local.get $n))
      (then (drop (table.grow $t (ref.null $c_i) (i32.sub (local.get $n) (table.size $t))))))
  )

  ;; The exception escapes the continuation, which is kept in a table.
  (func (export "escape") (param $n i32) (result i32)
    (local $i i32) (local $sum i32) (local $k (ref null $c_i))
    (call $grow (local.get $n))
    (loop $l
      (local.set $k (call $start (cont.new $ci_i (ref.func $leaf)) (local.get $i)))
      (table.set $t (local.get $i) (local.get $k))
      (local.set $sum (i32.add (local.get $sum)
        (block $c (result i32)
          (try_table (catch $exn $c)
            (drop (resume_throw $c_i $exn (i32.const 1) (local.get $k))))
          (unreachable))))
      (local.set $i (i32.add (local.get $i) (i32.const 1)))
      (br_if $l (i32.lt_u (local.get $i) (local.get $n)))
    )
    (local.get $sum)
  )
  ;; The exception is caught by the parent of the continuation's top stack, then the
  ;; continuation is finished; the consumed continuation is kept in a table.
  (func (export "handled") (param $n i32) (result i32)
    (local $i i32) (local $sum i32) (local $k (ref null $c_i))
    (call $grow (local.get $n))
    (loop $l
      (local.set $k (call $start (cont.new $ci_i (ref.func $catcher)) (local.get $i)))
      (table.set $t (local.get $i) (local.get $k))
      (local.set $sum (i32.add (local.get $sum)
        (resume_throw $c_i $exn (i32.const 2) (local.get $k))))
      (local.set $i (i32.add (local.get $i) (i32.const 1)))
      (br_if $l (i32.lt_u (local.get $i) (local.get $n)))
    )
    (local.get $sum)
  )
)

(assert_return (invoke "escape" (i32.const 10)) (i32.const 10))
(assert_return (invoke "escape" (i32.const 3000)) (i32.const 3000))
(assert_return (invoke "handled" (i32.const 10)) (i32.const 65))
(assert_return (invoke "handled" (i32.const 3000)) (i32.const 4504500))
