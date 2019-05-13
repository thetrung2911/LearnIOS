func chanLe(_ numbers: Int...) -> [Int] {
 	var c = [Int]()
 	var l = [Int]()
 	for i in numbers{
		if i % 2 == 0 {
			c.append(i)
		}else{
			l.append(i)
		}
	}
	// var cl = [Int]()
	// cl += l
	// cl += c
	return l + c
 } 
print(chanLe(2,1,3,4,5,6,7))


