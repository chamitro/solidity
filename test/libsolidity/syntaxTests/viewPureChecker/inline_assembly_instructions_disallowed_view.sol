contract C {
    function f() public view {
        assembly {
            sstore(0, 1)
            pop(create(0, 1, 2))
            pop(create2(0, 1, 2, 3))
            pop(call(0, 1, 2, 3, 4, 5, 6))
            pop(callcode(0, 1, 2, 3, 4, 5, 6))
            pop(delegatecall(0, 1, 2, 3, 4, 5))
            selfdestruct(0)
            log0(0, 1)
            log1(0, 1, 2)
            log2(0, 1, 2, 3)
            log3(0, 1, 2, 3, 4)
            log4(0, 1, 2, 3, 4, 5)

            // These two are disallowed too but the error suppresses other errors.
            //pop(msize())
            //pop(pc())
        }
    }
}
// ====
// EVMVersion: >=london
// bytecodeFormat: legacy
// ----
// Warning 1699: (308-320): "selfdestruct" has been deprecated. Note that, starting from the Cancun hard fork, the underlying opcode no longer deletes the code and data associated with an account and only transfers its Ether to the beneficiary, unless executed in the same transaction in which the contract was created (see EIP-6780). Any use in newly deployed contracts is strongly discouraged even if the new behavior is taken into account. Future changes to the EVM might further reduce the functionality of the opcode.
// Warning 5740: (336-468): Unreachable code.
// TypeError 8961: (75-87): Function cannot be declared as view because this expression (potentially) modifies the state.
// TypeError 8961: (104-119): Function cannot be declared as view because this expression (potentially) modifies the state.
// TypeError 8961: (137-156): Function cannot be declared as view because this expression (potentially) modifies the state.
// TypeError 8961: (174-199): Function cannot be declared as view because this expression (potentially) modifies the state.
// TypeError 8961: (217-246): Function cannot be declared as view because this expression (potentially) modifies the state.
// TypeError 8961: (264-294): Function cannot be declared as view because this expression (potentially) modifies the state.
// TypeError 8961: (308-323): Function cannot be declared as view because this expression (potentially) modifies the state.
// TypeError 8961: (336-346): Function cannot be declared as view because this expression (potentially) modifies the state.
// TypeError 8961: (359-372): Function cannot be declared as view because this expression (potentially) modifies the state.
// TypeError 8961: (385-401): Function cannot be declared as view because this expression (potentially) modifies the state.
// TypeError 8961: (414-433): Function cannot be declared as view because this expression (potentially) modifies the state.
// TypeError 8961: (446-468): Function cannot be declared as view because this expression (potentially) modifies the state.
