# The `branch` Monitor

Wizard's built-in `branch` monitor analyzes the dynamic control flow behavior of a program by instrumenting all branches and reporting a summary.
It is enabled with the `--monitors=branches` flag and accepts a small number of flags.

## Basic usage

```
% bin/wizeng --monitors=branches test/monitors/branch_monitor.wasm 
func "start":
  +18 br_if:	 [1, 4]
  +22 br_if:	 [1, 0]
func "foo":
  +22 br_table:	 [4, 4, 4, 8]
  +41 br_if:	 [1, 19]
```

As we can see above, the default behavior is to instrument every branch in the program and report the count for each destination.
For conditional branch instructions such as `br_if` and `if`, the counts reported are the *not taken*/*taken* and *false*/*true* counts.
For `br_table`, the count is per destination, starting with `0`.

## Annotated code display

The `{c}` or `{code}` suboption displays the branch information as annotations on the bytecode (including nice effects like color and underlines if your terminal supports it).

```
% bin/wizeng --monitors=branches{c} test/monitors/branch_monitor.wasm 
func "start":
   +3     i32.const[5]                     
   +5     local.set[0]                     
   +7     loop[]                             <-- +18: 4, +22: 0
   +9     local.get[0]                     
  +11     i32.const[1]                     
  +13     i32.sub                          
  +14     local.set[0]                     
  +16     local.get[0]                     
  +18     br_if[depth=0]                     --> +7: 4, +20: 1
  +20     local.get[0]                       <-- +18: 1
  +22     br_if[depth=0]                     --> +7: 0, +24: 1
  +24     end                                <-- +22: 1
  +25     call[func=2]                     
  +27     end                              
func "foo":
   +3     i32.const[20]                    
   +5     local.set[0]                     
   +7     loop[]                             <-- +41: 19
   +9     block[]                          
  +11     block[]                          
  +13     block[]                          
  +15     block[]                          
  +17     local.get[0]                     
  +19     i32.const[5]                     
  +21     i32.rem_s                        
  +22     br_table[4...]                     --> +30: 4, +29: 4, +28: 4, +27: 8
  +28     end                                <-- +22: 4
  +29     end                                <-- +22: 4
  +30     end                                <-- +22: 4
  +31     end                              
  +32     local.get[0]                     
  +34     i32.const[1]                     
  +36     i32.sub                          
  +37     local.set[0]                     
  +39     local.get[0]                     
  +41     br_if[depth=0]                     --> +7: 19, +43: 1
  +43     end                                <-- +41: 1
  +44     end                              
```

### CSV display

The branch monitor can also output its data in a comma-separated-value format, which makes it useful for processing by other tools.

```
% bin/wizeng --monitors=branches -csv test/monitors/branch_monitor.wasm 
branch,func,pc,instruction,taken_paths
branch,"start",18,br_if,[1 4]
branch,"start",22,br_if,[1 0]
branch,"foo",22,br_table,[4 4 4 8]
branch,"foo",41,br_if,[1 19]
```
