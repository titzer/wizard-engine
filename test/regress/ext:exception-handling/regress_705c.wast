(module
  (type $t3 (func (param f64)))
  (type $ft (func (result i64)))
  (tag $tag3 (type $t3) (param f64))

  (func $e0 (type $ft) (result i64)
    (local $h i64) (local $vi640 i64)
    local.get $h
    block $L13
      try_table (catch_all $L13) ;; label = @2
        f64.const 0
        throw $tag3
        unreachable
      end
    end
    local.get $h
    i64.xor
  )
  (func (export "x") (type $ft) (result i64)
    call $e0
  )
)

(assert_return (invoke "x") (i64.const 0))
