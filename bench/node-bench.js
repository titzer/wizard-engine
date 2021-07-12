var fs = require('fs');
var bytes = fs.readFileSync('program-5.wasm');
var imports = { env: { clock_ms: () => BigInt(Date.now()) } }
var instance = new WebAssembly.Instance(new WebAssembly.Module(bytes), imports);

var before = Date.now();
var r = instance.exports['main']();
var diff = Date.now() - before;
console.log("time = " + diff + " ms");
