{
	for { let x := 1 } 1 {} { let x := 1 }
}
// ====
// dialect: evm
// ----
// DeclarationError 1395: (29-39): Variable name x already taken in this scope.
