//Chú ý kiểu trả về -> ((String) -> Void)
func demo_return_func() -> ((String) -> Void) {
    //Định nghĩa hàm bên trong 1 hàm
    func print_some_thing(text: String) {
        print(text)
    }
    //Rồi sau đó trả về kiểu function
    return print_some_thing
}

var function = demo_return_func()  //function có thể gán như biến
function("Hello World")