;; Test: continuation returning i32 boundary values
(module
  (type $f (func (result i32 i32 i32)))
  (type $c (cont $f))

  (func $ret (result i32 i32 i32)
    (i32.const 0x7FFFFFFF)  ;; max signed
    (i32.const 0x80000000)  ;; min signed
    (i32.const 0xFFFFFFFF)  ;; -1 / max unsigned
  )
  (elem declare func $ret)

  (func (export "main") (result i32 i32 i32)
    (resume $c (cont.new $c (ref.func $ret)))
  )
)

(assert_return (invoke "main") (i32.const 0x7FFFFFFF) (i32.const 0x80000000) (i32.const 0xFFFFFFFF))
