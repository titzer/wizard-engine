(module
  (tag $e-i32 (param i32))

  (func $do_throw (param i32)
    (throw $e-i32 (local.get 0)))

  (func (export "test-throw-catch") (param i32 i32) (result i32)
    (block $h0 (result i32)
       (block $h1 (result i32)
         (block $h2 (result i32)
           (block $h3 (result i32)
             (block $h4 (result i32)
	     
               (if (i32.eq (local.get 0) (i32.const 0))
	         (then (try_table (catch $e-i32 $h0) (call $do_throw (local.get 1)))))
		 
               (if (i32.eq (local.get 0) (i32.const 1))
	         (then (try_table (catch $e-i32 $h1) (call $do_throw (local.get 1)))))
		 
               (if (i32.eq (local.get 0) (i32.const 2))
	         (then (try_table (catch $e-i32 $h2) (call $do_throw (local.get 1)))))
		 
               (if (i32.eq (local.get 0) (i32.const 3))
	         (then (try_table (catch $e-i32 $h3) (call $do_throw (local.get 1)))))
		 
               (if (i32.eq (local.get 0) (i32.const 4))
	         (then (try_table (catch $e-i32 $h4) (call $do_throw (local.get 1)))))
		 
               (i32.const 99)
             )
           )
         )
       )
     )
  )
)

(assert_return (invoke "test-throw-catch" (i32.const 1000) (i32.const 77)) (i32.const 99))

(assert_return (invoke "test-throw-catch" (i32.const 0) (i32.const 66)) (i32.const 66))
(assert_return (invoke "test-throw-catch" (i32.const 0) (i32.const -8888)) (i32.const -8888))

(assert_return (invoke "test-throw-catch" (i32.const 1) (i32.const 166)) (i32.const 166))
(assert_return (invoke "test-throw-catch" (i32.const 1) (i32.const -18888)) (i32.const -18888))

(assert_return (invoke "test-throw-catch" (i32.const 2) (i32.const 266)) (i32.const 266))
(assert_return (invoke "test-throw-catch" (i32.const 2) (i32.const -28888)) (i32.const -28888))

(assert_return (invoke "test-throw-catch" (i32.const 3) (i32.const 366)) (i32.const 366))
(assert_return (invoke "test-throw-catch" (i32.const 3) (i32.const -38888)) (i32.const -38888))

(assert_return (invoke "test-throw-catch" (i32.const 4) (i32.const 466)) (i32.const 466))
(assert_return (invoke "test-throw-catch" (i32.const 4) (i32.const -48888)) (i32.const -48888))
