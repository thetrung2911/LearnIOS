
import Foundation
func bai5(){
    print("Nhập số cột:")
    let NumColumns = Int(readLine()!)!
    print("Nhập số hàng:")
    let NumRows = Int(readLine()!)!
    var a = 0
    var matrix:[[Int]] = [[Int]](repeating:[Int](repeating:0, count: NumColumns), count:NumRows)
    for i in 0..<NumRows{
        var b = NumColumns
        if i % 2 == 0{
            for j in 0..<NumColumns{
                a += 1
                matrix[i][j] = a
            }
        }else{
            while b >= 1 {
                a += 1
                b -= 1
                matrix[i][b] = a
            }
        }
    }
    for i in 0..<NumRows{
        for j in 0..<NumColumns{
            print(matrix[i][j], terminator: " ")
        }
        print("")
    }
    
}
