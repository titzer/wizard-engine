;; Build a cont that returns 42, resume it, get the result back.
(module
  (type $ft (func (result i32)))
  (type $ct (cont $ft))

  (func $f (result i32) (i32.const 42))
  (elem declare func $f)

  (func (export "main") (result i32)
    (resume $ct (cont.new $ct (ref.func $f)))
  )
)

(assert_return (invoke "main") (i32.const 42))
