(module
  (type $0 (func))
  (type $1 (cont 0))
  (type $2 (func (param (ref eq))))
  (type $3 (func (param i32 i32) (result i32)))
  (tag $0 (type 2))
  (elem $0 declare func $f)
 
  (func (export "main")
    (type 0)
    (block
      (result (ref eq))
      (try_table (catch 0 0) (ref.func $f) (cont.new 1) (resume 1) (unreachable))
      (unreachable)
    )
    (unreachable)
    (drop)
  )
  (func $f (type 0) (i32.const 0) (ref.i31) (throw 0))
)

(assert_trap (invoke "main") "unreachable")