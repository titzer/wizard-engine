(module
  (type $base (sub (struct))) (type $der (sub $base (struct)))
  (type $abase (array (mut (ref null $base)))) (type $ader (array (mut (ref null $der))))
  (func (export "f") (result i32)
    (local $t (ref $abase)) (local $s (ref $ader))
    (local.set $t (array.new_default $abase (i32.const 2)))
    (local.set $s (array.new_default $ader  (i32.const 2)))
    (array.copy $abase $ader (local.get $t) (i32.const 0) (local.get $s) (i32.const 0) (i32.const 2))
    (i32.const 11)))

(assert_return (invoke "f") (i32.const 11))
