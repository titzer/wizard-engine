(module
  (func (export "main")
    (call $start)
  )
  (func $start (export "_start")
    (call $f0)
  )
  (func $f0
    unreachable
  )
)
