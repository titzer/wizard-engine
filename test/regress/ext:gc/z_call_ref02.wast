(module
  (type $0 (func (result i32)))
  (type $1 (func))
  (export "_start" (func 0))
  (elem declare func 1)
  (func $0
    (type 1)
    (ref.func 1)
    (call_ref 0)
    (drop)
  )
  (func $1 (type 0) (unreachable))
)
(assert_trap (invoke "_start") "unreachable")
