(module
  (func (export "_start")
	(call $countdown (i32.const 99))
  )
  (func $countdown (param i32)
    (if (local.get 0)
      (then (call $countdown (i32.sub (local.get 0) (i32.const 1)))))
  )
)
