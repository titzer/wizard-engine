(module
  (type $f1 (func (param i32 i32 i32 i32 i64 i64 i64 i64)
     (result i32 i32 i32 i32 i64 i64 i64 i64)))
  (type $c1 (cont $f1))
  (func $add (param i32 i32 i32 i32 i64 i64 i64 i64)
     (result i32 i32 i32 i32 i64 i64 i64 i64)
    (i32.add (local.get 0) (i32.const 11))
    (i32.add (local.get 1) (i32.const 22))
    (i32.add (local.get 2) (i32.const 33))
    (i32.add (local.get 3) (i32.const 44))
    (i64.add (local.get 4) (i64.const 555))
    (i64.add (local.get 5) (i64.const 666))
    (i64.add (local.get 6) (i64.const 777))
    (i64.add (local.get 7) (i64.const 888))
  )
  (elem declare func $add)
  (func (export "main") (param i32 i32 i32 i32 i64 i64 i64 i64)
      (result i32 i32 i32 i32 i64 i64 i64 i64)
    (resume $c1 (local.get 0) (local.get 1) (local.get 2) (local.get 3) (local.get 4) (local.get 5) (local.get 6) (local.get 7)
      (cont.new $c1 (ref.func $add)))
  )
)

(assert_return (invoke "main"
  (i32.const 0) (i32.const 0) (i32.const 0) (i32.const 0)
  (i64.const 0) (i64.const 0) (i64.const 0) (i64.const 0))
;; results
  (i32.const 11) (i32.const 22) (i32.const 33) (i32.const 44)
  (i64.const 555) (i64.const 666) (i64.const 777) (i64.const 888))
  
(assert_return (invoke "main"
  (i32.const 100) (i32.const 200) (i32.const 300) (i32.const 400)
  (i64.const 5000) (i64.const 6000) (i64.const 7000) (i64.const 8000))
;; results
  (i32.const 111) (i32.const 222) (i32.const 333) (i32.const 444)
  (i64.const 5555) (i64.const 6666) (i64.const 7777) (i64.const 8888))
  

