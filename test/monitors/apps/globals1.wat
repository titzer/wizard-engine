(module
  (global $g_funcref (mut funcref) (ref.null func))
  (global $g_externref (mut externref) (ref.null extern))
  
  (func $main (export "main")
    (local $y i32)
    (local.set $y (i32.const 3))
    (loop $l
      (call $get)
      (call $set)
      (call $get)
      (local.tee $y (i32.sub (local.get $y) (i32.const 1)))
      (br_if $l)
    )
  )
  (func $get
    (global.get $g_funcref)
    (global.get $g_externref)
    (return)
  )
  (func $set
    (global.set $g_funcref (ref.null func))
    (global.set $g_externref (ref.null extern))
  )
)
