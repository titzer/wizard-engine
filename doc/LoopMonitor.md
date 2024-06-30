# The `loops` Monitor

Wizard's built-in `loops` monitor analyzes the dynamic control flow behavior of a program by instrumenting all loops and reporting a summary.
It is enabled with the `--monitors=loops` flag and accepts a small number of flags.

## Basic usage

```
% bin/wizeng --monitors=loops test/monitors/loop_monitor0.wasm 
func #1:
   +8 ... +39 loop:   133
  +14 ... +27 loop:   399
  +45 ... +58 loop:   123
```

As we can see above, the default behavior is to instrument every loop in the program and report the execution count for each loop body.
Note that the loop body is the *syntactic* loop body and doesn't consider branches inside the loop or the fact that paths leading out of the loop may have some instructions syntactically in the loop but not semantically in the loop.
Also note that the monitor doesn't handle nested loops specially.

## Annotated code display

The `{c}` or `{code}` suboption displays the loop information as annotations on the bytecode (including nice effects like color).
Notice that this display mode also shows nested loops.

```
% bin/wizeng --monitors=loops{c} test/monitors/loop_monitor0.wasm 
func #1:
   +3	i32.const[133]
   +6	local.set[0]
   +8	-->	loop[]
  +10	|	i32.const[3]
  +12	|	local.set[1]
  +14	|	-->	loop[]
  +16	|	|	local.get[1]
  +18	|	|	i32.const[1]
  +20	|	(399)	i32.sub
  +21	|	|	local.set[1]
  +23	(399)	|	local.get[1]
  +25	|	|	br_if[depth=0]
  +27	|	<--	end
  +28	|	local.get[0]
  +30	|	i32.const[1]
  +32	|	i32.sub
  +33	|	local.set[0]
  +35	|	local.get[0]
  +37	|	br_if[depth=0]
  +39	<--	end
  +40	i32.const[123]
  +43	local.set[0]
  +45	-->	loop[]
  +47	|	local.get[0]
  +49	|	i32.const[1]
  +51	(123)	i32.sub
  +52	|	local.set[0]
  +54	|	local.get[0]
  +56	|	br_if[depth=0]
  +58	<--	end
  +59	end
func #2:
   +1	-->	loop[]
   +3	<--	end
   +4	end
```

### CSV display

The `loops` monitor can also output its data in a comma-separated-value format, which makes it useful for processing by other tools.

```
% bin/wizeng -csv --monitors=loops test/monitors/loop_monitor0.wasm 
loop,func,pc,end_pc,count
loop,#1,8,39,133
loop,#1,14,27,399
loop,#1,45,58,123
```
