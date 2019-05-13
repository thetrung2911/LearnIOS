/*
Giải thích tại sao method struct phải có từ khóa mutating nếu muốn thay đổi thuộc tính.
Ngược lại method class không cần mutating mà vẫn thay đổi được thuộc tính class?

Swift structs are immutable objects, calling a mutating function actually returns a new struct in-place (much like passing an 
inout parameter to a function). The mutating keyword lets callers know that the method is going to make the value change. The 
best way to conceptualize this is to think of your struct the same as you would a number; if you perform the operation 4 + 1, 4 
doesn’t become 5, you’ve just gotten a new value after performing the operation. Mutating functions operate on the same 
principle. If you make a value type a constant (e.g. let someStruct = SomeStruct()), you are unable to call mutating functions 
on it: they can only be called on a variable.

https://stackoverflow.com/questions/51128666/who-can-explain-the-swift-keyword-mutating-confused
*/
class Counter {
    var count = 0
    func increment() {  //Không dùng keyword mutating ở đây
        count += 1
		}
		func showValue() {
      print(count)
    }
}

var count = Counter()
count.increment()
count.showValue()

struct CounterS {
    private var count = 0
    mutating func increment() {  //Khi method struct thay đổi thuộc tính buộc phải dùng từ khóa mutating trước method
      count += 1
    }
    func showValue() {
      print(count)
    }
}

var countS = CounterS()
countS.increment()
countS.showValue()
