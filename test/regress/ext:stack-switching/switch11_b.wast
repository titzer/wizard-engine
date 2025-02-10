(module
  (type $s (array (mut f64)))

  (rec
    (type $f1 (func (param (ref null $s) i32 (ref null $c2)) (result f64)))
    (type $c1 (cont $f1))
    (type $f2 (func (param i32 (ref null $c2)) (result f64)))
    (type $c2 (cont $f2))
    (type $f3 (func (param) (result f64)))
    (type $c3 (cont $f3))
  )
  (tag $e (result f64))
  (global $acc (mut i32) (i32.const 0))

  (func $iter (type $f1)
    (local $cont (ref null $c2))
    (local $i i32)

    (block $break
      (local.get 1)
      (local.get 2)
      (loop $loop (param i32 (ref null $c2))
        (local.set $cont)
        (local.set $i)

        (br_if $break (i32.le_s (local.get $i) (i32.const 0)))

        (global.set $acc (i32.add (i32.const 1) (global.get $acc)))
        (i32.sub (local.get $i) (i32.const 1))
        (local.get $cont)
        (switch $c2 $e)
        (br $loop)
      )
      (unreachable)
    )
    ;; (return (f64.convert_i32_s (global.get $acc)))
    (throw $e)
  )
  (elem declare func $iter)

  (func (export "main") (param $index i32) (result f64)
    (local $arr (ref null $s))
    (local $a (ref null $c2))
    (local $b (ref null $c2))

    (global.set $acc (i32.const 0))

    (array.new $s (f64.const 0) (i32.const 65536))
    (local.set $arr)
    (array.set $s (local.get $arr) (local.get $index) (f64.const 1))


    (local.set $a (cont.bind $c1 $c2 (local.get $arr) (cont.new $c1 (ref.func $iter))))
    (local.set $b (cont.bind $c1 $c2 (local.get $arr) (cont.new $c1 (ref.func $iter))))

    (block $exit
      ;; apply {b} to {a}: a.bind(0, b)
      (try_table (catch $e $exit)
        (cont.bind $c2 $c3 (local.get $index) (local.get $b) (local.get $a))
        (resume $c3 (on $e switch))
        (drop)
      )
      (unreachable)
    )
    (f64.const 1)
  )
)

(assert_return (invoke "main" (i32.const 0)) (f64.const 1))
(assert_return (invoke "main" (i32.const 1)) (f64.const 1))
(assert_return (invoke "main" (i32.const 2)) (f64.const 1))
(assert_return (invoke "main" (i32.const 3)) (f64.const 1))
(assert_return (invoke "main" (i32.const 4)) (f64.const 1))
(assert_return (invoke "main" (i32.const 42)) (f64.const 1))
(assert_return (invoke "main" (i32.const 69)) (f64.const 1))
(assert_return (invoke "main" (i32.const 17770)) (f64.const 1))
