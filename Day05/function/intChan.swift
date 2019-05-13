func intChan (_ numbers: Int...) -> [Int] {
	var intC = [Int]()
	for i in numbers{
		if i % 2 == 0 {
			intC.append(i)
		}
	}

	return intC
}

print(intChan(2,1,3,4,5,6,7))