
func swapInt(_ a: Int, _ b: Int) -> (Int, Int) {
  return (b, a)
}

var x = swapInt(10, 5)
var (m, n) = swapInt(20, 10)

print(x)
print(m, n)

func swapInt2(_ a: inout Int, _ b: inout Int) {
  var temp = a
  a = b
  b = temp
}

var a = 10, b = 5
swapInt2(a, b)
print(a, b)
