;; Test: suspend with multiple primitive values
(module
  (type $f (func (result i32)))
  (type $c (cont $f))
  ;; Suspended continuation type: takes i32 from tag result
  (type $fs (func (param i32) (result i32)))
  (type $cs (cont $fs))

  (tag $t (param i32 i64 f32) (result i32))

  (func $inner (result i32)
    (suspend $t (i32.const 10) (i64.const 20) (f32.const 12.0))
  )
  (elem declare func $inner)

  (func (export "main") (result i32 i64 f32)
    (local $k (ref $cs))
    (block $h (result i32 i64 f32 (ref $cs))
      (resume $c (on $t $h) (cont.new $c (ref.func $inner)))
      (return (i32.const -1) (i64.const -1) (f32.const -1))
    )
    (local.set $k)
    ;; return the values received from suspend
  )
)

(assert_return (invoke "main") (i32.const 10) (i64.const 20) (f32.const 12.0))
