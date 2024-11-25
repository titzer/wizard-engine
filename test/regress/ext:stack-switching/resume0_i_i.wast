;; Test round-tripping (i32) through a continuation works.
(module
  (type $i_i (func (param i32) (result i32)))
  (type $k_i_i (cont $i_i))

  (func $f_i_i (param i32) (result i32)
    (i32.sub (local.get 0) (i32.const 111))  ;; not identity
  )

  (elem declare func $f_i_i)

  (func (export "call_i_i") (param i32) (result i32)
    (resume $k_i_i (local.get 0) (cont.new $k_i_i (ref.func $f_i_i)))
  )
)

(assert_return (invoke "call_i_i" (i32.const 444)) (i32.const 333))
(assert_return (invoke "call_i_i" (i32.const 666)) (i32.const 555))
