# Correctness Testing #

## Issues: ##

1. `simple_overlap.wat`: Does not apply overlapping probe matches!
2. `*static-pred*.wat`: Does not correctly use predicate (no events matched if predicate is present).
3. `req-data_immN.wat`: ClassCastException.
3. `req-data_multiple.wat`: ClassCastException.
3. `req-data_with-space.wat`: Probe not applied if there's space between the match rule and the req args (seems this may only happen on Macs when using JVM??).
4. `linking*.wat`: Does not correctly instantiate the linked modules for whamm monitor to import from them (see comments in the files for exceptions).
5. `multi-memory.wat`: Activating the multi-memory extension doesn't work for the whamm monitor (see comments in file).

## Completed tests: ##

- `simple*.wat`: Simple probes (testcases involve “1 → ∞” of these probes)
    - simple match rule, needs no application data from frameaccessor
- `static-pred*.wat`: Simple probes + static predicate (testcases involve “1 → ∞” of these probes)
    - only requests static data at match time for the static predicate
- `req-data*.wat`: Data-requesting probes (testcases involve “1 → ∞” of these probes)
    - Match rule without predication, but requests data from the frameaccessor when on callback invocation
    - `req-data*static-pred*.wat`: Match rule requesting data *with* static predication
- `linking*.wat`: Probes utilize some linked library modules.
- `multi-memory*.wat`: Probes are dependent on multi-memory.
- `print*.wat`: Correct and incorrect implementations that exercise the WhammMonitor error handling.

## What tests should *do*:

1. Verify correct execution of intrinsified callbacks
2. Composition of multiple whamm monitors
    1. multiple probes at a single location
3. Change ordering of requested operands
    1. (argN at the end)
    2. Request all args (in different orders, set to different values to see if things are off)

## Future:

1. Test behavior when tiering up, THEN deoptimizing (fall back to the interpreter)...can't be done until we have an API for probe removal...
2. Requested data (todo after we've added these capabilities):
    - memory load results
    - table index values
    - etc.