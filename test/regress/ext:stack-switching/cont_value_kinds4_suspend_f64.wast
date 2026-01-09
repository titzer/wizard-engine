;; Test: suspend with f64 payload
(module
  (type $f (func (result f64)))
  (type $c (cont $f))
  ;; Suspended continuation type: takes f64 from tag result
  (type $fs (func (param f64) (result f64)))
  (type $cs (cont $fs))

  (tag $t (param f64) (result f64))

  (func $inner (result f64)
    (f64.add (f64.const 1.5) (suspend $t (f64.const 3.14159)))
  )
  (elem declare func $inner)

  (func (export "main") (result f64)
    (block $h (result f64 (ref $cs))
      (resume $c (on $t $h) (cont.new $c (ref.func $inner)))
      (return)
    )
    (resume $cs)
  )
)

(assert_return (invoke "main") (f64.const 4.64159))
