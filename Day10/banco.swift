
func bai1 (){
	for i in 0...7 {
	for j in 0...7 {
		if (i+j) % 2 == 0 {
			print ("b", terminator: " ")
		}else {
			print ("w", terminator: " ")
		}
	}
	print("")
}
}

func bai2() {
	for i in 0...7 {
		for j in 0...7 {
			if i==j {
				print ("b", terminator: " ")
				}else if i == j+1{
					print ("w", terminator: " ")
					}else if j == i+1{
						print ("w", terminator: " ")
						}else {
					print (" ", terminator: " ")
				}
		}
		print("")
	}
}

func bai3() {
	for i in 0...7 {
		for j in 0...7 {
			if j == 4 {
					if i % 2 == 0 {
					print ("*", terminator: " ")	
					}else{
						print ("-", terminator: " ")
					}
				}else if j == 3 {
					if i % 2 == 1 {
					print ("*", terminator: " ")	
					}else{
						print ("-", terminator: " ")
					}	
				}else{
					print ("-", terminator: " ")
				}
		}
		print("")
	}
}

func bai4() {
	for i in 0...7 {
		for j in 0...7 {
			if i + j == 3 || i - j == 4 || j + i == 11 || j-i==4 {
				print ("*", terminator: " ")
			}else{
				print ("-", terminator: " ")	
			}
		}
		print("")
	}
}
bai4()
