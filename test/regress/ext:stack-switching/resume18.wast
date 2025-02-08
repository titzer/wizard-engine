;; issue #273
(module
  (tag $exn)
  (type $fun (func))
  (type $cont (cont $fun))
  (func $g)
  (elem declare func $g)
  (func (export "main")
    (block $exit
      (try_table (catch $exn $exit)
        (resume $cont (cont.new $cont (ref.func $g)))
      )
      (throw $exn)
    )
  )
)

(assert_exception (invoke "main"))
