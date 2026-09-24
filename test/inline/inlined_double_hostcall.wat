(module
  (func $gc (import "wizeng" "force_gc"))
  (func $inner
    (call $gc)
    (call $gc)
  )
  (func (export "_start")
    (call $inner)
  )
)
