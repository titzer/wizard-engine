;; Test: resume_throw with continuation ref tag payload
(module
  (type $f1 (func (result i32)))
  (type $c1 (cont $f1))

  (type $f2 (func (result i32)))
  (type $c2 (cont $f2))

  (tag $e (param (ref null $c1)))

  (func $ret42 (result i32) (i32.const 42))
  (elem declare func $ret42)

  (func $inner (result i32)
    (block $h (result (ref null $c1))
      (try_table (catch $e $h) (suspend $e (cont.new $c1 (ref.func $ret42))))
      (return (i32.const -1))
    )
    ;; received a continuation, resume it
    (resume $c1)
  )
  (elem declare func $inner)

  (func (export "main") (result i32)
    (block $h (result (ref null $c1) (ref $c2))
      (resume $c2 (on $e $h) (cont.new $c2 (ref.func $inner)))
      (return)
    )
    ;; throw the continuation ref back into the suspended continuation
    (resume_throw $c2 $e)
  )
)

(assert_return (invoke "main") (i32.const 42))
