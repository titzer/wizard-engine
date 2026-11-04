;; Stacks that end in each way: returning, being unwound by an exception, or staying live.
;; Build with: wasm-tools parse test/monitors/ss_lifecycle.wat -o test/monitors/ss_lifecycle.wasm
(module
  (type $f (func))
  (type $c (cont $f))
  (tag $e)
  (tag $t)
  (import "wizeng" "force_gc" (func $host))
  (global $kept (mut (ref null $c)) (ref.null $c))
  (global $fresh (mut (ref null $c)) (ref.null $c))

  ;; Suspends once, then returns.
  (func $once (suspend $t))
  ;; Throws an exception that its parent catches.
  (func $throws (throw $e))
  ;; Resumes $once without a handler, so the suspend of $once also suspends this stack. Catches
  ;; the exception that is later thrown into the pair.
  (func $outer
    (block $h
      (try_table (catch $e $h)
        (resume $c (cont.new $c (ref.func $once))))))
  (elem declare func $host $once $throws $outer)

  (func (export "main") (local $k (ref null $c))
    ;; A continuation of a host function returns at once.
    (resume $c (cont.new $c (ref.func $host)))
    ;; An exception from a child unwinds it and is caught here.
    (block $h
      (try_table (catch $e $h)
        (resume $c (cont.new $c (ref.func $throws)))))
    ;; A pair of stacks suspends together. The exception thrown into the pair unwinds the top
    ;; stack and is caught by the bottom one, which then returns.
    (block $s (result (ref null $c))
      (resume $c (on $t $s) (cont.new $c (ref.func $outer)))
      (return))
    (local.set $k)
    (resume_throw $c $e (local.get $k))
    ;; An exception thrown into a suspended stack that does not catch it unwinds that stack.
    (block $s (result (ref null $c))
      (resume $c (on $t $s) (cont.new $c (ref.func $once)))
      (return))
    (local.set $k)
    (block $h
      (try_table (catch $e $h)
        (resume_throw $c $e (local.get $k))))
    ;; A suspended stack that is not resumed again, and a new one that is never resumed, are still
    ;; live at the end.
    (block $s (result (ref null $c))
      (resume $c (on $t $s) (cont.new $c (ref.func $once)))
      (return))
    (global.set $kept)
    (global.set $fresh (cont.new $c (ref.func $once)))
  )
)
