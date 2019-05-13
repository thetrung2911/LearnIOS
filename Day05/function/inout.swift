
func look_fruit(fruit: Int) {    
    // error: left side of mutating operator isn't mutable: 'fruit' is a 'let' constant
    fruit -= 1 // Đoạn lệnh này báo lỗi biên dịch vì tham số fruit là constant    
}

func eat_fruit(fruit: inout Int) {
    fruit -= 1
}
var apples = 30 // Prints "There's 30 apples"
print("There's \(apples) apples")
look_fruit(fruit: apples)

eat_fruit(fruit: &apples)
print("There's now \(apples) apples") // Prints "There's 29 apples".
