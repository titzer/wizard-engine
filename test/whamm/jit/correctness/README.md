# Correctness Testing #

## Issues: ##

1. `simple/simple_overlap.wat`: Does not apply overlapping probe matches!
2. `static-pred/*`: Does not correctly use predicate (no events matched if predicate is present).
3. `req-data/immN.wat`: ClassCastException (see comments in file).
3. `req-data/req_multiple.wat`: ClassCastException (see comments in file).
4. Match rule doesn't work if there's a space between the rule and the arguments (e.g. `wasm:opcode:call (arg0)`).
5. `req-data/static-pred*`: Does not correctly use predicate (no events matched if predicate is present).

## Completed tests: ##

- `simple/*`: Simple probes (testcases involve “1 → ∞” of these probes)
    - simple match rule, needs no application data from frameaccessor
- `static-pred/*`: Simple probes + static predicate (testcases involve “1 → ∞” of these probes)
    - only requests static data at match time for the static predicate
- `req-data/*`: Data-requesting probes (testcases involve “1 → ∞” of these probes)
    - Match rule without predication, but requests data from the frameaccessor when on callback invocation
    - `req-data/static-pred*`: Match rule requesting data *with* static predication

## What tests should *do*:

1. Verify correct execution of intrinsified callbacks
2. Composition of multiple whamm monitors
    1. multiple probes at a single location
3. change ordering of requested operands
    1. (argN at the end)
    2. Request all args (in different orders, set to different values to see if things are off)

## Tests TODO:

- Probes call out to a linked module
    - body located in linked module
    - body calls func in linked module
    - predicate located in linked module
    - predicate calls func in linked module
    - more complex
        - linked module calls a linked module!
        - linked module calls func in main module!
- multi-memory!

## Future:

1. Test behavior when tiering up, THEN deoptimizing (fall back to the interpreter)...can't be done until we have an API for probe removal...
2. Requested data (todo after we've added these capabilities):
    - memory load results
    - table index values
    - etc.