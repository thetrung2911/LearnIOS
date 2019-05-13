
func make_ex9_5(_ ex: String) -> (Int, Int)->Int{

	func cong(_ a: Int,_ b: Int)->Int{
		return a+b
	}
	func tru(_ a: Int,_ b: Int)->Int{
		return a-b
	}
	func chia(_ a: Int,_ b: Int)->Int {
		return a/b
	}
	func du(_ a: Int, _ b: Int) -> Int{
		return a % b
	}
	func defau(_ a: Int,_ b: Int)->Int{
		return a
	}
	switch ex{
		case "+": 
		return cong
		case "-": 
		return tru
		case "/": 
		return chia
		case "%": 
		return du
		default: 
		return defau
	}

	
}

print(make_ex9_5("/")(10, 20))