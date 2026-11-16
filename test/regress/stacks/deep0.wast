;; Test: many continuations suspended deep in recursion, with locals in every frame,
;; resumed in interleaved order while compressed.
(module
  (type $fi_i (func (param i32) (result i32)))
  (type $ci_i (cont $fi_i))
  (type $f_i (func (result i32)))
  (type $c_i (cont $f_i))

  (tag $yield)
  (table $t 0 (ref null $c_i))

  ;; Recurses {d} frames, then yields, then returns the sum of (d + x) over all frames.
  (func $rec (param $d i32) (param $x i32) (result i32)
    (local $mine i32) (local $f f64)
    (local.set $mine (i32.add (local.get $d) (local.get $x)))
    (local.set $f (f64.convert_i32_u (local.get $mine)))
    (if (result i32) (i32.eqz (local.get $d))
      (then (suspend $yield) (local.get $mine))
      (else
        (i32.add (call $rec (i32.sub (local.get $d) (i32.const 1)) (local.get $x))
          (i32.trunc_f64_u (local.get $f)))))
  )
  (func $entry (param $x i32) (result i32) (call $rec (i32.const 30) (local.get $x)))
  (elem declare func $entry)

  (func (export "main") (param $n i32) (result i64)
    (local $i i32) (local $sum i64) (local $k (ref null $c_i))
    (drop (table.grow $t (ref.null $c_i) (local.get $n)))
    (loop $create
      (block $h (result (ref $c_i))
        (drop (resume $ci_i (on $yield $h) (local.get $i) (cont.new $ci_i (ref.func $entry))))
        (unreachable)
      )
      (local.set $k)
      (table.set $t (local.get $i) (local.get $k))
      (local.set $i (i32.add (local.get $i) (i32.const 1)))
      (br_if $create (i32.lt_u (local.get $i) (local.get $n)))
    )
    ;; Resume even indices, then odd indices.
    (local.set $i (i32.const 0))
    (loop $even
      (local.set $sum (i64.add (local.get $sum) (i64.extend_i32_u (resume $c_i (table.get $t (local.get $i))))))
      (local.set $i (i32.add (local.get $i) (i32.const 2)))
      (br_if $even (i32.lt_u (local.get $i) (local.get $n)))
    )
    (local.set $i (i32.const 1))
    (loop $odd
      (if (i32.lt_u (local.get $i) (local.get $n)) (then
        (local.set $sum (i64.add (local.get $sum) (i64.extend_i32_u (resume $c_i (table.get $t (local.get $i))))))
        (local.set $i (i32.add (local.get $i) (i32.const 2)))
        (br $odd)))
    )
    (local.get $sum)
  )
)

;; Each continuation x returns sum_{d=0..30} (d + x) = 465 + 31 * x.
(assert_return (invoke "main" (i32.const 1)) (i64.const 465))
(assert_return (invoke "main" (i32.const 2000)) (i64.const 62899000))
