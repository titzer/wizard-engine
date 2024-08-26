(module
  (memory (export "memory") 1)
  (func (export "main")
    i32.const 0        
    i64.const 5        
    i64.store
    i32.const 0        
    i64.const 5
    i64.const 3      
    i64.atomic.rmw.cmpxchg offset=0 align=8 drop
  )
  (func (export "test_i64_atomic_cmpxchg") (result i64)
    i32.const 0        
    i64.const 5        
    i64.store
    i32.const 0        
    i64.const 5
    i64.const 3      
    i64.atomic.rmw.cmpxchg offset=0 align=8
  )
  (func (export "test_i64_atomic_cmpxchg_8") (result i64)
    i32.const 0        
    i64.const 5        
    i64.store
    i32.const 0        
    i64.const 5
    i64.const 3      
    i64.atomic.rmw8.cmpxchg_u offset=0 align=1
  )
  (func (export "test_i64_atomic_cmpxchg_16") (result i64)
    i32.const 0        
    i64.const 5        
    i64.store
    i32.const 0        
    i64.const 5
    i64.const 3      
    i64.atomic.rmw16.cmpxchg_u offset=0 align=2
  )
  (func (export "test_i64_atomic_cmpxchg_32") (result i64)
    i32.const 0        
    i64.const 5        
    i64.store
    i32.const 0        
    i64.const 5
    i64.const 3      
    i64.atomic.rmw32.cmpxchg_u offset=0 align=4
  )
)

(assert_return (invoke "test_i64_atomic_cmpxchg") (i64.const 5))
(assert_return (invoke "test_i64_atomic_cmpxchg_8") (i64.const 5))
(assert_return (invoke "test_i64_atomic_cmpxchg_16") (i64.const 5))
(assert_return (invoke "test_i64_atomic_cmpxchg_32") (i64.const 5))
(assert_return (invoke "main"))

