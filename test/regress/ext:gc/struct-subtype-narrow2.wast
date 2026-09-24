;;! gc = true

;; A subtype narrows an externref field (which may hold a converted i31) to nullexternref.
(module
  (type $sup (sub (struct (field externref) (field i32))))
  (type $sub (sub $sup (struct (field nullexternref) (field i32))))

  (func (export "sub_via_sup") (result i32 i32)
    (local $o (ref $sub))
    (local.set $o (struct.new $sub (ref.null noextern) (i32.const 13)))
    (ref.is_null (struct.get $sup 0 (local.get $o)))
    (struct.get $sup 1 (local.get $o)))
  (func (export "sup_i31") (result i32 i32)
    (local $o (ref $sup))
    (local.set $o (struct.new $sup (extern.convert_any (ref.i31 (i32.const 21))) (i32.const 13)))
    (i31.get_u (ref.cast (ref i31) (any.convert_extern (struct.get $sup 0 (local.get $o)))))
    (struct.get $sup 1 (local.get $o)))
)
(assert_return (invoke "sub_via_sup") (i32.const 1) (i32.const 13))
(assert_return (invoke "sup_i31") (i32.const 21) (i32.const 13))
