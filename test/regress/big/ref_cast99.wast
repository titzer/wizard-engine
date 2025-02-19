(module
  (type $t1 (sub (struct)))
  (type $t2 (sub final (struct)))


  (func $make (param i32) (result anyref)
    (if (i32.eq (i32.const 0) (local.get 0))
      (then (return (ref.i31 (i32.const 11)))))
    (if (i32.eq (i32.const 1) (local.get 0))
      (then (return (struct.new_default $t1))))
    (if (i32.eq (i32.const 2) (local.get 0))
      (then (return (struct.new_default $t2))))
    (ref.null any)
  )

  (func $casts (param anyref)
    (if (ref.test structref (local.get 0))
      (then (drop (ref.cast structref (local.get 0)))))
    (if (ref.test arrayref (local.get 0))
      (then (drop (ref.cast arrayref (local.get 0)))))
    (if (ref.test eqref (local.get 0))
      (then (drop (ref.cast eqref (local.get 0)))))
    (if (ref.test i31ref (local.get 0))
      (then (drop (ref.cast i31ref (local.get 0)))))
  )

  (func (export "do") (param i32 i32)
    (loop
       (call $casts (call $make (local.get 1)))
       (br_if 0 (local.tee 0 (i32.sub (local.get 0) (i32.const 1))))
    )
    
  )
)

(assert_return (invoke "do" (i32.const 100) (i32.const 0)))
(assert_return (invoke "do" (i32.const 100) (i32.const 1)))
(assert_return (invoke "do" (i32.const 100) (i32.const 2)))
(assert_return (invoke "do" (i32.const 100) (i32.const 3)))

(assert_return (invoke "do" (i32.const 1000) (i32.const 0)))
(assert_return (invoke "do" (i32.const 1000) (i32.const 1)))
(assert_return (invoke "do" (i32.const 1000) (i32.const 2)))
(assert_return (invoke "do" (i32.const 1000) (i32.const 3)))

(assert_return (invoke "do" (i32.const 10_000) (i32.const 0)))
(assert_return (invoke "do" (i32.const 10_000) (i32.const 1)))
(assert_return (invoke "do" (i32.const 10_000) (i32.const 2)))
(assert_return (invoke "do" (i32.const 10_000) (i32.const 3)))

(assert_return (invoke "do" (i32.const 100_000) (i32.const 0)))
(assert_return (invoke "do" (i32.const 100_000) (i32.const 1)))
(assert_return (invoke "do" (i32.const 100_000) (i32.const 2)))
(assert_return (invoke "do" (i32.const 100_000) (i32.const 3)))

(assert_return (invoke "do" (i32.const 1_000_000) (i32.const 0)))
(assert_return (invoke "do" (i32.const 1_000_000) (i32.const 1)))
(assert_return (invoke "do" (i32.const 1_000_000) (i32.const 2)))
(assert_return (invoke "do" (i32.const 1_000_000) (i32.const 3)))
