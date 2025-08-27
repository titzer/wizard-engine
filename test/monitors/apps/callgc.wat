(module
  (type $ft (func))
  (type $ftp (func (param (ref $ft))))
  (func $f1 (param (ref $ft))
    (call_ref $ft (local.get 0))
  )
  (func $f2
    (call $f3)
  )
  (func $f3
  )
  (elem declare func $f1 $f2 $f3)
  (func (export "main")
    (call_ref $ftp (ref.func $f1 (ref.func $f2)))
    (return_call_ref $ftp (ref.func $f1 (ref.func $f3)))
  )
)
