object "main"
{
    code {
        datacopy(0, and(dataoffset("main"), 15), and(datasize("main"), 15))
        datacopy(32, and(dataoffset("sub"), 15), and(datasize("sub"), 15))
        sstore(0, mload(0))
        sstore(1, mload(32))
    }
    object "sub" { code { sstore(0, 1) } }
}
// ====
// bytecodeFormat: legacy
// ----
// Trace:
// Memory dump:
//      0: 6465636f00000000000000000000000000000000000000000000000000000000
//     20: 636f6465636f6465000000000000000000000000000000000000000000000000
// Storage dump:
//   0000000000000000000000000000000000000000000000000000000000000000: 6465636f00000000000000000000000000000000000000000000000000000000
//   0000000000000000000000000000000000000000000000000000000000000001: 636f6465636f6465000000000000000000000000000000000000000000000000
// Transient storage dump:
