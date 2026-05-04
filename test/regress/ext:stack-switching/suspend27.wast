;; 5-function call chain: func_a -> func_b -> func_c -> func_d -> func_e.
;; func_e suspends; each function holds an i32 on the operand stack and adds on return.
;; Tests 5 distinct non-recursive frames with pending operand stack values.
(module
  (type $f (func (result i32)))
  (type $c (cont $f))
  (type $fb (func (param i32) (result i32)))
  (type $cb (cont $fb))
  (tag $fetch (result i32))

  (func $func_e (result i32)
    (suspend $fetch)
  )

  (func $func_d (result i32)
    (i32.add (i32.const 10) (call $func_e))
  )

  (func $func_c (result i32)
    (i32.add (i32.const 20) (call $func_d))
  )

  (func $func_b (result i32)
    (i32.add (i32.const 30) (call $func_c))
  )

  (func $func_a (result i32)
    (i32.add (i32.const 40) (call $func_b))
  )

  (elem declare func $func_a)

  ;; main: catches suspension, resumes with 5
  ;; Result: 5 + 10 + 20 + 30 + 40 = 105
  (func (export "main") (result i32)
    (i32.const 5)
    (block (result (ref null $cb))
      (resume $c (on $fetch 0) (cont.new $c (ref.func $func_a)))
      (return)
    )
    (resume $cb)
  )
)

(assert_return (invoke "main") (i32.const 105))
