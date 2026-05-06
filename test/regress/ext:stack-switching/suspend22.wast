;; Deep recursion (200-deep), suspend at base, resume.
;; Tests 201 identical frames compressed/decompressed.
(module
  (type $f_start (func (result i32)))
  (type $c_start (cont $f_start))
  (type $f_resume (func (param i32) (result i32)))
  (type $c_resume (cont $f_resume))
  (tag $ts (param i32) (result i32))

  (func $foo (param i32) (result i32)
    (if (result i32) (i32.eqz (local.get 0))
      (then
        (suspend $ts (i32.const 0))
      )
      (else
        (i32.add
          (call $foo (i32.sub (local.get 0) (i32.const 1)))
          (i32.const 1))
      )
    )
  )

  (func $start (result i32)
    (call $foo (i32.const 200))
  )
  (elem declare func $start)

  ;; main: catches suspension (payload=0), resumes with 0
  ;; Each recursive frame adds 1 on return: result = 200
  (func (export "main") (result i32)
    (local $k (ref null $c_resume))
    (block (result i32 (ref null $c_resume))
      (resume $c_start (on $ts 0) (cont.new $c_start (ref.func $start)))
      (return)
    )
    (local.set $k)
    (drop) ;; drop tag payload (0)
    (i32.const 0)
    (local.get $k)
    (resume $c_resume)
  )
)

(assert_return (invoke "main") (i32.const 200))
