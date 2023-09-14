;; Link-time matching of recursive function types

(module $M
  (rec (type $f1 (func)) (type (struct)))
  (func (export "f") (type $f1))
)
(register "M" $M)

(module
  (rec (type $f2 (func)) (type (struct)))
  (func (import "M" "f") (type $f2))
)

(assert_unlinkable
  (module
    (rec (type (struct)) (type $f2 (func)))
    (func (import "M" "f") (type $f2))
  )
  "incompatible import type"
)

