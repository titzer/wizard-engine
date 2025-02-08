;; this is the test template for data type passing
;; control flow: main -> $from -> $to -> $from -> main
(module
  (type $f0 (func (result f64 f64 f64)))
  (type $c0 (cont $f0))

  ;; type of $from (and also $wrapper)
  (type $f1 (func (param f64) (result f64 f64 f64)))
  (type $c1 (cont $f1))

  ;; type of continuation generated by switching from $to
  (type $f4 (func (param (ref null $c0)) (result f64 f64 f64)))
  (type $c4 (cont $f4))

  ;; type of continuation generated by switching from $from
  (type $f2 (func (param f64 f64 f64 (ref null $c4)) (result f64 f64 f64)))
  (type $c2 (cont $f2))

  ;; type of $to
  (type $f3 (func (param f64 f64 f64 (ref null $c2)) (result f64 f64 f64)))
  (type $c3 (cont $f3))

  ;; dummy continuation type to test for suspension
  (type $f_dummy (func (param f64 f64 f64) (result f64 f64 f64)))
  (type $c_dummy (cont $f_dummy))

  (tag $e (result f64 f64 f64))

  (func $from (param $i f64) (result f64 f64 f64)
    (f64.add (local.get $i) (f64.const 100))
    (f64.add (local.get $i) (f64.const 200))
    (f64.add (local.get $i) (f64.const 300))
    (switch $c3 $e (cont.new $c3 (ref.func $to)))
    (drop)
    (return)
  )
  (elem declare func $from)

  (func $to (param $a f64) (param $b f64) (param $c f64) (param $cont (ref null $c2)) (result f64 f64 f64)
    (f64.add (local.get $a) (f64.const 10.5))
    (f64.add (local.get $b) (f64.const 20))
    (f64.add (local.get $c) (f64.const 30))
    (switch $c2 $e (local.get $cont))
    (unreachable)
  )
  (elem declare func $to)

  (func $wrapper (param $i f64) (result f64 f64 f64)
    (block $l (result (ref null $c_dummy))
      (local.get $i)
      (cont.new $c1 (ref.func $from))
      (resume $c1 (on $e $l))
      (return)
    )
    (unreachable)
  )
  (elem declare func $wrapper)

  (func (export "main") (param $i f64) (result f64 f64 f64)
    (local.get $i)
    (resume $c1 (on $e switch) (cont.new $c1 (ref.func $wrapper)))
  )
)

(assert_return (invoke "main" (f64.const 0)) (f64.const 110.5) (f64.const 220) (f64.const 330))
(assert_return (invoke "main" (f64.const 1)) (f64.const 111.5) (f64.const 221) (f64.const 331))
(assert_return (invoke "main" (f64.const 2)) (f64.const 112.5) (f64.const 222) (f64.const 332))
(assert_return (invoke "main" (f64.const 3)) (f64.const 113.5) (f64.const 223) (f64.const 333))
(assert_return (invoke "main" (f64.const 4)) (f64.const 114.5) (f64.const 224) (f64.const 334))
(assert_return (invoke "main" (f64.const 64)) (f64.const 174.5) (f64.const 284) (f64.const 394))
(assert_return (invoke "main" (f64.const 64.01)) (f64.const 174.51) (f64.const 284.01) (f64.const 394.01))
