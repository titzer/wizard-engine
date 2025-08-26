(assert_invalid
  (module (type $0 (func (result i32))) (import "" "" (tag $0 (type 0))))
  "non-empty tag result type"
)
