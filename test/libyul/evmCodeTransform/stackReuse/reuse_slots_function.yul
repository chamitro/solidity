{
    function f() -> x, y, z, t {}
    let a, b, c, d := f() let x1 := 2 let y1 := 3 mstore(x1, a) mstore(y1, c)
}
// ====
// stackOptimization: true
// EVMVersion: =current
// ----
//     /* "":58:61   */
//   tag_2
//   tag_1
//   jump	// in
// tag_2:
//     /* "":62:73   */
//   pop
//   swap2
//   swap1
//   pop
//     /* "":72:73   */
//   0x02
//     /* "":74:85   */
//   swap1
//     /* "":84:85   */
//   0x03
//     /* "":86:99   */
//   swap2
//   mstore
//     /* "":100:113   */
//   mstore
//     /* "":0:115   */
//   stop
//     /* "":6:35   */
// tag_1:
//     /* "":25:26   */
//   0x00
//     /* "":28:29   */
//   0x00
//     /* "":31:32   */
//   0x00
//     /* "":22:23   */
//   0x00
//     /* "":6:35   */
//   swap4
//   jump	// out
