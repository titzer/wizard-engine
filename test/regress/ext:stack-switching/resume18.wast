;; issue #273
(module
  (tag $exn)
  (type $fun (func))
  (type $cont (cont $fun))
  (elem declare func $g)
  (func (export "main")
    (block $exit
      (try_table (catch $exn $exit)
        (resume $cont (cont.new $cont (ref.func $g))))
      (throw $exn)))
  (func $g)
)

(assert_exception (invoke "main"))
