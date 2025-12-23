(module
  (type $0 (func))
  (type $1 (func))
  (type $2 (array i32))
  (type $3 (func (result f32 (ref 2))))
  (type $4 (func (result f32 i32)))

  (export "f0" (func 0))
  (export "f1" (func 1))
  (func $0
    (type 3)
    (block
      (type 3)
      (block
        (type 3)
        (block
          (type 3)
          (f32.const -3.14)
          (i32.const 1)
          (array.new_default 2)
          (br_on_cast_fail 2 (ref 2) (ref 2))
        )
      )
    )
  )
  (func (export "foo")
    (type 4)   
    (call $0)
    (ref.is_null)
  )
)

(assert_return (invoke "foo") (f32.const -3.140_000_104_904_174_8) (i32.const 0))
