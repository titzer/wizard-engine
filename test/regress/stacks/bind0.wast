;; Test: many continuations waiting for a value are given it with {cont.bind} while
;; compressed, then resumed.
(module
  (type $f_i (func (result i32)))
  (type $c_i (cont $f_i))
  (type $fi_i (func (param i32) (result i32)))
  (type $ci_i (cont $fi_i))
  (type $fii_i (func (param i32 i32) (result i32)))
  (type $cii_i (cont $fii_i))

  (tag $ask (result i32))
  (table $t 0 (ref null $ci_i))

  (func $asker (param $x i32) (result i32)
    (i32.sub (suspend $ask) (local.get $x))
  )
  (elem declare func $asker)

  (func (export "main") (param $n i32) (result i64)
    (local $i i32) (local $sum i64) (local $k (ref null $c_i)) (local $q (ref null $ci_i))
    (drop (table.grow $t (ref.null $ci_i) (local.get $n)))
    (loop $create
      (block $h (result (ref $ci_i))
        (drop (resume $ci_i (on $ask $h) (local.get $i) (cont.new $ci_i (ref.func $asker))))
        (unreachable)
      )
      (local.set $q)
      (table.set $t (local.get $i) (local.get $q))
      (local.set $i (i32.add (local.get $i) (i32.const 1)))
      (br_if $create (i32.lt_u (local.get $i) (local.get $n)))
    )
    ;; Bind all answers first, then resume all.
    (local.set $i (i32.const 0))
    (loop $bind
      (local.set $k (cont.bind $ci_i $c_i (i32.mul (local.get $i) (i32.const 3))
        (table.get $t (local.get $i))))
      (table.set $t (local.get $i) (ref.null $ci_i))
      (local.set $sum (i64.add (local.get $sum) (i64.extend_i32_u (resume $c_i (local.get $k)))))
      (local.set $i (i32.add (local.get $i) (i32.const 1)))
      (br_if $bind (i32.lt_u (local.get $i) (local.get $n)))
    )
    (local.get $sum)
  )
)

(assert_return (invoke "main" (i32.const 1)) (i64.const 0))
(assert_return (invoke "main" (i32.const 10000)) (i64.const 99990000))
