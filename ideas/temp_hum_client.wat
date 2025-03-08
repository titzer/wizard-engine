(module $my_sensor_module
  (import "Server" "recordTemperature" (func (param f64)))
  (import "Server" "recordHumidity" (func (param f64)))

  ;; internal logic that we'll write to decide when/how to send readings.
)
