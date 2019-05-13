//Chú ý khi truyền vào variadic parameters, trong thân hàm sẽ coi tham số variadic là một mảng
func sum (_ numbers: Int...) -> Int {
	print("Số phần tử number truyền vào là \(numbers.count)")
	return numbers.reduce(0, +)  //Xem array/reduce.swift nhé
}

print(sum(1, 2, 3, 4, 5))
print(sum())
//Yêu cầu tối thiểu 2 tham số
func mul(_ a: Int, _ b: Int, _ numbers: Int...) -> Int {
	return  numbers.reduce(a * b, *)
}

print(mul(1, 2, 3, 4, 5))

print(mul(2, 3))

//print(mul(2)) lỗi vì không đủ tham số
