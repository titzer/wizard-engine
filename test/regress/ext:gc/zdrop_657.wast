(module
  (data $d "ab")
  (type $a (array (mut i8)))
  (func (export "f") (result i32)
    (data.drop $d)
    (drop (array.new_data $a $d (i32.const 0) (i32.const 0)))   ;; in bounds: a zero-length array
    (i32.const 33))
)

(assert_return (invoke "f") (i32.const 33))
