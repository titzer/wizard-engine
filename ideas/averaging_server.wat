(module $averaging_server
  (global $total_temp (mut f64) (f64.const 0))
  (global $total_hum (mut f64) (f64.const 0))
  (global $count_temp (mut i64) (i64.const 0))
  (global $count_hum (mut i64) (i64.const 0))

  (func $avgTemp (param f64)
    (global.set $total_temp (f64.add (global.get $total_temp) (local.get 0)))
    (global.set $count_temp (i64.add (global.get $count_temp) (i64.const 1))))

  (func $avgHum (param f64)
    (global.set $total_hum (f64.add (global.get $total_temp) (local.get 0)))
    (global.set $count_hum (i64.add (global.get $count_temp) (i64.const 1))))

  (export "recordTemperature" (func $avgTemp))
  (export "recordHumidity" (func $avgHum))
)
