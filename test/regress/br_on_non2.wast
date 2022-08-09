(module
  (type $ft (func (result i32)))
  (type $st (struct (field i16)))
  (type $at (array i8))

  (table 10 anyref)

  (elem declare func $f)
  (func $f (result i32) (i32.const 9))

  (func (export "init") (param $x externref)
    (table.set (i32.const 0) (ref.null any))
    (table.set (i32.const 1) (i31.new (i32.const 7)))
    (table.set (i32.const 2) (struct.new_canon $st (i32.const 6)))
    (table.set (i32.const 3) (array.new_canon $at (i32.const 5) (i32.const 3)))
    (table.set (i32.const 4) (ref.func $f))
    (table.set (i32.const 5) (local.get $x))
  )

  (func (export "br_on_non_func") (param $i i32) (result i32)
    (block $l (result anyref)
      (br_on_non_func $l (table.get (local.get $i)))
      (ref.cast_canon $ft)
      (return (call_ref))
    )
    (return (i32.const -1))
  )
)

(invoke "init" (ref.extern 0))

(assert_return (invoke "br_on_non_func" (i32.const 4)) (i32.const 9))
