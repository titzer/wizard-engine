(module
(import "main" "func" (func $f1))
(import "lib" "func" (func $f2))

(export "func1" (func $f1))
(export "func2" (func $f2))

)