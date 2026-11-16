;; Test: continuations given their arguments one at a time with {cont.bind}, while other
;; continuations are created in between so that the partially bound ones are compressed.
(module
  (type $f3 (func (param i32 i32 i32) (result i32)))
  (type $c3 (cont $f3))
  (type $f2 (func (param i32 i32) (result i32)))
  (type $c2 (cont $f2))
  (type $f1 (func (param i32) (result i32)))
  (type $c1 (cont $f1))
  (type $f0 (func (result i32)))
  (type $c0 (cont $f0))

  (tag $ask (result i32 i32))
  (table $t2 0 (ref null $c2))
  (table $t0 0 (ref null $c0))

  ;; Takes one argument, asks for two more, and combines all three.
  (func $worker (param $x i32) (result i32)
    (local $a i32) (local $b i32)
    (suspend $ask)
    (local.set $b)
    (local.set $a)
    (i32.add (i32.mul (local.get $x) (i32.const 100)) (i32.add (i32.mul (local.get $a) (i32.const 10)) (local.get $b)))
  )
  (elem declare func $worker)

  (func (export "main") (param $n i32) (result i64)
    (local $i i32) (local $sum i64) (local $k (ref null $c2))
    (drop (table.grow $t2 (ref.null $c2) (local.get $n)))
    (drop (table.grow $t0 (ref.null $c0) (local.get $n)))
    (loop $create
      (block $h (result (ref $c2))
        (drop (resume $c1 (on $ask $h) (local.get $i) (cont.new $c1 (ref.func $worker))))
        (unreachable)
      )
      (local.set $k)
      (table.set $t2 (local.get $i) (local.get $k))
      (local.set $i (i32.add (local.get $i) (i32.const 1)))
      (br_if $create (i32.lt_u (local.get $i) (local.get $n)))
    )
    ;; Bind {a = 3} then {b = 4} in separate passes.
    (local.set $i (i32.const 0))
    (loop $bind
      (table.set $t0 (local.get $i)
        (cont.bind $c1 $c0 (i32.const 4)
          (cont.bind $c2 $c1 (i32.const 3) (table.get $t2 (local.get $i)))))
      (local.set $i (i32.add (local.get $i) (i32.const 1)))
      (br_if $bind (i32.lt_u (local.get $i) (local.get $n)))
    )
    (local.set $i (i32.const 0))
    (loop $run
      (local.set $sum (i64.add (local.get $sum) (i64.extend_i32_u (resume $c0 (table.get $t0 (local.get $i))))))
      (local.set $i (i32.add (local.get $i) (i32.const 1)))
      (br_if $run (i32.lt_u (local.get $i) (local.get $n)))
    )
    (local.get $sum)
  )
)

;; Each continuation x returns 100 * x + 34.
(assert_return (invoke "main" (i32.const 1)) (i64.const 34))
(assert_return (invoke "main" (i32.const 1000)) (i64.const 49984000))
