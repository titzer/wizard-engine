(module
  (type $t1 (sub (func)))
  (type $t2 (sub final (func)))
  (func (export "f1") (type $t1))
  (func (export "f2") (type $t2))
)
(register "M2")

(assert_unlinkable
  (module
    (type $t1 (sub (func)))
    (type $t2 (sub final (func)))
    (func (import "M2" "f1") (type $t2))
  )
  "incompatible import type"
)
(assert_unlinkable
  (module
    (type $t1 (sub (func)))
    (type $t2 (sub final (func)))
    (func (import "M2" "f2") (type $t1))
  )
  "incompatible import type"
)
