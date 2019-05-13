//Định nghĩa 2 hàm ở cấp độ global
func sayHello(salute name: String) {
	print(name)
}

//Có parameter là salute
sayHello(salute: "Cuong")

//Bỏ qua parameter name
func sayHi(_ name: String) {
	print(name)
}

sayHi("John")