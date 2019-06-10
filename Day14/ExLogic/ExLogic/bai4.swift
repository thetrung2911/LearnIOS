

import Foundation
var hh = [Int]()
var nt = [Int]()
var cp = [Int]()
func bai4(){
    let NumColumns = 3
    let NumRows = 3
    var matrix:[[Int]] = [[Int]](repeating:[Int](repeating:0, count: NumColumns), count:NumRows)
    var sumchan = 0
    var sumsql = 0.0
    
    for i in 0..<NumRows{
        for j in 0..<NumColumns{
            matrix[i][j] = Int.random(in: 1...100)
            if matrix[i][j] % 2 == 0 {
                sumchan += matrix[i][j]
                sumsql += pow(Double(matrix[i][j]),2)
            }
            
            print(matrix[i][j], terminator: " ")
        }
        print("")
    }
    for i in 0..<NumRows{
        for j in 0..<NumColumns{
            nguyento(matrix[i][j])
            chinhphuong(matrix[i][j])
            hoanhao(matrix[i][j])
        }
    }
    
    print("Tổng bình phương: \(sumsql)")
    print("Tổng số chẵn: \(sumchan)")
    print("Dãy số nguyên tố: \(nt)")
    print("Dãy số chính phương: \(cp)")
    print("Dãy số hoàn hảo: \(hh)")
    

}
func nguyento(_ a: Int){
    var dem = 0
    if a > 1 {
        for i in 2..<a{
            if a % i == 0{
               dem += 1
            }
        }
        if dem == 0 {
            nt.append(a)
        }
    }
}
func chinhphuong(_ a: Int){
    for i in 0...a{
        if i * i == a{
            cp.append(a)
            break
        }else if i * i > a{
            break
        }
    }
}
func hoanhao(_ a:Int){
    var sum = 0
    for i in 1..<a {
        if a % i == 0{
            sum += i
        }
    }
    if sum == a {
        hh.append(a)
    }
}
