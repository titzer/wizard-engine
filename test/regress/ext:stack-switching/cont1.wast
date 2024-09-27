;; Check that continuations can be made from all basic primitives types
(module
  (type $func1 (func (param i32)))
  (type $func2 (func (param i64)))
  (type $func3 (func (param f32)))
  (type $func4 (func (param f64)))
  (type $func5 (func (param v128)))
  (type $cont1 (cont $func1))
  (type $cont2 (cont $func2))
  (type $cont3 (cont $func3))
  (type $cont4 (cont $func4))
  (type $cont5 (cont $func5))
)
