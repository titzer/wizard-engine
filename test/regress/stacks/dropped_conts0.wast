;; Test: a million continuations, suspended mid-execution and then dropped, which
;; forces their memory to be reclaimed (or compressed) over and over.
(module
  (type $fi (func (param i32)))
  (type $ci (cont $fi))
  (type $fv (func))
  (type $cv (cont $fv))

  (tag $yield (param i32))

  (func $worker (param $x i32)
    (suspend $yield (i32.mul (local.get $x) (i32.const 2)))
    (unreachable) ;; never resumed
  )
  (elem declare func $worker)

  (func (export "main") (param $n i32) (result i64)
    (local $i i32) (local $sum i64) (local $v i32)
    (loop $l
      (block $h (result i32 (ref $cv))
        (resume $ci (on $yield $h) (local.get $i) (cont.new $ci (ref.func $worker)))
        (unreachable)
      )
      (drop) ;; the suspended continuation
      (local.set $v)
      (local.set $sum (i64.add (local.get $sum) (i64.extend_i32_u (local.get $v))))
      (local.set $i (i32.add (local.get $i) (i32.const 1)))
      (br_if $l (i32.lt_u (local.get $i) (local.get $n)))
    )
    (local.get $sum)
  )
)

(assert_return (invoke "main" (i32.const 10)) (i64.const 90))
(assert_return (invoke "main" (i32.const 1000000)) (i64.const 999999000000))
