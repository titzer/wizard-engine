(module
  (tag $e-i32 (param i32))

  (func (export "test-throw-catch") (param i32 i32) (result i32)
    (block $h0 (result i32)
       (block $h1 (result i32)
         (block $h2 (result i32)
           (block $h3 (result i32)
             (block $h4 (result i32)
	     
               (if (i32.eq (local.get 0) (i32.const 0))
	         (then (try_table (catch $e-i32 $h0) (local.get 1) (throw $e-i32))))
		 
               (if (i32.eq (local.get 0) (i32.const 1))
	         (then (try_table (catch $e-i32 $h1) (local.get 1) (throw $e-i32))))
		 
               (if (i32.eq (local.get 0) (i32.const 2))
	         (then (try_table (catch $e-i32 $h2) (local.get 1) (throw $e-i32))))
		 
               (if (i32.eq (local.get 0) (i32.const 3))
	         (then (try_table (catch $e-i32 $h3) (local.get 1) (throw $e-i32))))
		 
               (if (i32.eq (local.get 0) (i32.const 4))
	         (then (try_table (catch $e-i32 $h4) (local.get 1) (throw $e-i32))))
		 
               (i32.const 99)
             )
           )
         )
       )
     )
  )
)

(assert_return (invoke "test-throw-catch" (i32.const 1000) (i32.const 77)) (i32.const 99))

(assert_return (invoke "test-throw-catch" (i32.const 0) (i32.const 77)) (i32.const 77))
(assert_return (invoke "test-throw-catch" (i32.const 0) (i32.const -9999)) (i32.const -9999))

(assert_return (invoke "test-throw-catch" (i32.const 1) (i32.const 177)) (i32.const 177))
(assert_return (invoke "test-throw-catch" (i32.const 1) (i32.const -19999)) (i32.const -19999))

(assert_return (invoke "test-throw-catch" (i32.const 2) (i32.const 277)) (i32.const 277))
(assert_return (invoke "test-throw-catch" (i32.const 2) (i32.const -29999)) (i32.const -29999))

(assert_return (invoke "test-throw-catch" (i32.const 3) (i32.const 377)) (i32.const 377))
(assert_return (invoke "test-throw-catch" (i32.const 3) (i32.const -39999)) (i32.const -39999))

(assert_return (invoke "test-throw-catch" (i32.const 4) (i32.const 477)) (i32.const 477))
(assert_return (invoke "test-throw-catch" (i32.const 4) (i32.const -49999)) (i32.const -49999))

