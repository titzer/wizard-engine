;; Test round-tripping externref through a continuation works.
(module
  (type $e_e (func (param externref) (result externref)))
  (type $k_e_e (cont $e_e))

  (func $id_e_e (param externref) (result externref) (local.get 0))

  (elem declare func $id_e_e)

  (func (export "call_e_e") (param externref) (result externref)
    (resume $k_e_e (local.get 0) (cont.new $k_e_e (ref.func $id_e_e)))
  )
)

(assert_return (invoke "call_e_e" (ref.extern 0)) (ref.extern 0))
(assert_return (invoke "call_e_e" (ref.extern 1)) (ref.extern 1))

;; TODO: host references?
;;(assert_return (invoke "call_e_e" (ref.host 0)) (ref.host 0))
;;(assert_return (invoke "call_e_e" (ref.host 1)) (ref.host 1))

