;; Test: suspend with continuation reference payload
(module
  (type $helper_f (func (result i32)))
  (type $helper_c (cont $helper_f))
  (type $f (func (result i32)))
  (type $c (cont $f))

  (tag $t (param (ref $helper_c)) (result i32))

  (func $ret21 (result i32) (i32.const 21))
  (elem declare func $ret21)

  (func $inner (result i32)
    (i32.mul (i32.const 2) (suspend $t (cont.new $helper_c (ref.func $ret21))))
  )
  (elem declare func $inner)

  (func (export "main") (result i32)
    (local $helper (ref $helper_c))
    (block $h (result (ref $helper_c) (ref $c))
      (resume $c (on $t $h) (cont.new $c (ref.func $inner)))
      (return)
    )
    (local.set $helper)
    ;; resume the helper to get 21, pass back to inner which doubles it
    (resume $c (resume $helper_c (local.get $helper)))
  )
)

(assert_return (invoke "main") (i32.const 42))
