contract C {
    function f() public view returns (uint ret) {
        assembly {
            let basefee := sload(0)
            ret := basefee
        }
    }
}
// ====
// EVMVersion: =london
// ----
// ParserError 5568: (98-105): Cannot use builtin function name "basefee" as identifier name.
// ParserError 7104: (137-144): Builtin function "basefee" must be called.
