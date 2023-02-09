(module
  (memory $mem0 0)
  (memory $mem1 0)
  (memory $mem2 0)
  (memory $mem3 0)
  (memory $mem4 1)
  (data (memory $mem4) (i32.const 0) "abcdefghijklmnopqrstuvwxyz")
  
  (func (export "32s_good1") (param $i i32) (result i64)
    (i64.load32_s $mem4 offset=0 (local.get $i))                 ;; 1684234849 'abcd'
  )
)
(assert_return (invoke "32s_good1" (i32.const 0x0)) (i64.const 0x6463_6261))
