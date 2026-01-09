;; Test: suspend with v128 payload
(module
  (type $f (func (result v128)))
  (type $c (cont $f))
  ;; Suspended continuation type: takes v128 from tag result
  (type $fs (func (param v128) (result v128)))
  (type $cs (cont $fs))

  (tag $t (param v128) (result v128))

  (func $inner (result v128)
    (i32x4.add (v128.const i32x4 1 1 1 1) (suspend $t (v128.const i32x4 10 20 30 40)))
  )
  (elem declare func $inner)

  (func (export "main") (result v128)
    (block $h (result v128 (ref $cs))
      (resume $c (on $t $h) (cont.new $c (ref.func $inner)))
      (return)
    )
    ;; pass back the same v128, inner adds 1 to each lane
    (resume $cs)
  )
)

(assert_return (invoke "main") (v128.const i32x4 11 21 31 41))
