# Confirmed disagreements

Hand-written text sources for the differences that `check.sh` found between Wizard and the
reference interpreter, kept here as independent evidence. The recorded `.bin.wast` corpus is
encoded by Wizard's own test helpers, so a difference there could in principle be an artifact
of that encoding; these sources are written by hand in the text format and validated by the
reference interpreter, which does its own encoding. Each one below reproduces a difference
that Wizard does not detect at all.

Run them with:

    wasm-spec/repos/spec/interpreter/wasm test/regress/binary/disagree/*.wast

They are expected to be *rejected*, so this directory is not wired into `test/regress.sh`.
`ok.wast` is a control that must be accepted, to show that the rejection is caused by the
element type and nothing else.

## elem_type_flags0.wast, elem_type_flags4.wast

The specification gives an element segment a single type and requires that type to be a
subtype of the table's element type. Wizard does not perform that check for two of the
segment encodings:

  - flags=0 (active, table 0, function indices). The segment's type is `funcref`.
    `BinParser.readElemDecl` case 0 never calls `checkElemsType`; it type checks each
    function individually instead, which accepts a `funcref` segment into a table of typed
    function references even though `funcref` is not a subtype of `(ref null $t)`.
    Recorded as `bin:elements3[1]` and `bin:elements4[1]`, which the unit tests assert are
    valid. (Those two unit tests are byte-for-byte identical to each other.)

  - flags=4 (active, table 0, expressions). The segment's type is implicitly `funcref`.
    Case 4 does call `checkElemsType`, but derives the expected type from the table itself:

        var elemtype = if(t.0 != null, ValueType.Ref(true, t.0.elemtype.heap), ValueTypes.FUNCREF);
        checkElemsType(pt, t.0, elemtype);

    so it compares the table's element type against itself and can never fail. Case 6, the
    same encoding with an explicit type, does it correctly with `checkElemsType(pt, table, vt)`.
    Recorded as `bin:elements1[2]`, which the unit test asserts is valid.
