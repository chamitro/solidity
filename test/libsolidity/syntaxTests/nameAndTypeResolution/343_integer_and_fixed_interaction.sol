contract test {
    function f() public {
        ufixed a = uint64(1) + ufixed(2);
    }
}
// ====
// compileViaYul: true
// ----
// Warning 2072: (50-58): Unused local variable.
// Warning 2018: (20-89): Function state mutability can be restricted to pure
// UnimplementedFeatureError 1834: (73-82): Fixed point types not implemented.
