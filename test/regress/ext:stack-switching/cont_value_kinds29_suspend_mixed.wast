;; Test: multiple suspends with different mixed types
(module
  (type $point (struct (field $v i32)))
  (type $f (func (result i32)))
  (type $c (cont $f))
  ;; Suspended continuation types for each tag's result
  (type $f1 (func (param i64) (result i32)))
  (type $c1 (cont $f1))
  (type $f2 (func (param f64) (result i32)))
  (type $c2 (cont $f2))
  (type $f3 (func (param (ref $point)) (result i32)))
  (type $c3 (cont $f3))

  (tag $t1 (param i32) (result i64))
  (tag $t2 (param (ref $point)) (result f64))
  (tag $t3 (param f64 i64) (result (ref $point)))

  (func $inner (result i32)
    (local $a i64)
    (local $b f64)
    (local $p (ref $point))
    ;; first suspend with i32, get i64 back
    (local.set $a (suspend $t1 (i32.const 10)))
    ;; second suspend with struct, get f64 back
    (local.set $b (suspend $t2 (struct.new $point (i32.const 5))))
    ;; third suspend with f64+i64, get struct back
    (local.set $p (suspend $t3 (local.get $b) (local.get $a)))
    ;; return struct value
    (struct.get $point $v (local.get $p))
  )
  (elem declare func $inner)

  (func (export "main") (result i32)
    (local $k1 (ref $c1))
    (local $k2 (ref $c2))
    (local $k3 (ref $c3))
    ;; handle first suspend
    (block $h1 (result i32 (ref $c1))
      (resume $c (on $t1 $h1) (cont.new $c (ref.func $inner)))
      (return)
    )
    (local.set $k1)
    (drop) ;; drop the i32
    ;; handle second suspend, pass i64 20
    (block $h2 (result (ref $point) (ref $c2))
      (resume $c1 (on $t2 $h2) (i64.const 20) (local.get $k1))
      (return)
    )
    (local.set $k2)
    (drop) ;; drop the struct
    ;; handle third suspend, pass f64 7.5
    (block $h3 (result f64 i64 (ref $c3))
      (resume $c2 (on $t3 $h3) (f64.const 7.5) (local.get $k2))
      (return)
    )
    (local.set $k3)
    (drop) ;; drop i64
    (drop) ;; drop f64
    ;; pass struct with value 42
    (resume $c3 (struct.new $point (i32.const 42)) (local.get $k3))
  )
)

(assert_return (invoke "main") (i32.const 42))
