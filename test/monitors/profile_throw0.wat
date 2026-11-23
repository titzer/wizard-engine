;; Profiling exceptions: functions unwound by a throw never return, but calls made after the
;; exception is caught must be attributed to the catching function, not to the unwound ones.
(module
  (tag $e)
  (func $leaf)
  (func $thrower (call $leaf) (throw $e))
  (func $mid (call $thrower))
  (func $catcher
    (block $h (try_table (catch $e $h) (call $mid)))
    (call $leaf))
  (func $escape (call $mid))
  (func $main (export "main")
    (call $catcher)
    (call $catcher)
    (call $leaf)
    (call $escape)) ;; escapes main
)
