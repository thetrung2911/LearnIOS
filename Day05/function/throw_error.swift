enum MathError: Error {
    case DivideByZero
}

func divide(_ a: Double, _ b: Double) throws -> Double {
	if b != 0 {
			return a/b
	} else {
		throw MathError.DivideByZero
	}
}

do {
	try print(divide(9, 3))
	try print(divide(9, 0))
} catch {
	print("\(error)")
}
