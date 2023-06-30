(assert_invalid
  (module
    (type $t (struct))
    (func (param (ref null any)) (result (ref $t))
      (block (result (ref any)) (br_on_cast 1 (ref null any) (ref $t) (local.get 0))) (unreachable)
    )
  )
  "type mismatch"
)
