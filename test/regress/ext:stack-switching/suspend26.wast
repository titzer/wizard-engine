;; Multi-value return (i32, i64, f32) through suspended stack.
(module
  (type $f (func (result i32 i64 f32)))
  (type $c (cont $f))
  (type $fb (func (param i32) (result i32 i64 f32)))
  (type $cb (cont $fb))
  (tag $ts (result i32))

  (func $compute (param i32) (result i32 i64 f32)
    (local $received i32)
    (local.set $received (suspend $ts))
    ;; return (param + received, i64(param * 2), f32(param + 1))
    (i32.add (local.get 0) (local.get $received))
    (i64.extend_i32_s (i32.mul (local.get 0) (i32.const 2)))
    (f32.convert_i32_s (i32.add (local.get 0) (i32.const 1)))
  )

  (func $start (result i32 i64 f32)
    (call $compute (i32.const 5))
  )
  (elem declare func $start)

  ;; main: catches suspension, resumes with 100
  ;; With input 5: returns (5+100=105, i64(5*2)=10, f32(5+1)=6.0)
  (func (export "main") (result i32 i64 f32)
    (i32.const 100)
    (block (result (ref null $cb))
      (resume $c (on $ts 0) (cont.new $c (ref.func $start)))
      (return)
    )
    (resume $cb)
  )
)

(assert_return (invoke "main") (i32.const 105) (i64.const 10) (f32.const 6.0))
