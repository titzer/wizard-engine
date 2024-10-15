(module
  (global $g_i (mut i32) (i32.const 11))
  (global $g_f (mut f32) (f32.const 11))
  
  (type $f_if (func (param i32 f32)))
  (type $c_if (cont $f_if))

  (type $f_fi (func (param f32 i32)))
  (type $c_fi (cont $f_fi))

  (type $f_i (func (param i32)))
  (type $c_i (cont $f_i))

  (type $f_f (func (param f32)))
  (type $c_f (cont $f_f))

  (func $set_i (param i32)
    (global.set $g_i (local.get 0)))

  (func $set_f (param f32)
    (global.set $g_f (local.get 0)))

  (func $set_fi (param f32 i32)
    (resume $c_i (local.get 1) (cont.new $c_i (ref.func $set_i)))
    (resume $c_f (local.get 0) (cont.new $c_f (ref.func $set_f)))
  )

  (elem declare func $set_i $set_f $set_fi $set_if)

  (func $set_if (param i32 f32)
    (resume $c_fi (local.get 1) (local.get 0) (cont.new $c_fi (ref.func $set_fi)))
  )

  (func (export "main") (param i32 f32) (result f32 i32)
    (resume $c_if (local.get 0) (local.get 1) (cont.new $c_if (ref.func $set_if)))
    (global.get $g_f)
    (global.get $g_i)
  )
)

(assert_return (invoke "main" (i32.const 22) (f32.const 22)) (f32.const 22) (i32.const 22))
