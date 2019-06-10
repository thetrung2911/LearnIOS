

import Foundation
func bai8(){
    let NumColumns = 6
    let NumRows = 6
    var matrix:[[Int]] = [[Int]](repeating:[Int](repeating:0, count: NumColumns), count:NumRows)
    
    for i in 0..<NumRows{
        for j in 0..<NumColumns{
            matrix[i][j] = Int.random(in: 1..<10)
//            matrix[i][j] = 5
            print(matrix[i][j], terminator: " ")
        }
        print("")
    }
    
    sumbien(matrix, NumRows, NumColumns)
    sumcheo(matrix, NumRows)
    arrSymmetry(matrix, NumRows)
    
    
}

// tính tổng biên ma
func sumbien(_ arr: [[Int]], _ m: Int, _ n: Int){
    var sum: Int = 0
    for i in 0..<n{
        sum += arr[i][0]
        sum += arr[i][n-1]
    }
    for j in 1..<n-1{
        sum += arr[0][j]
        sum += arr[n-1][j]
    }
    print(sum)
}

// sum đương chéo chính
func sumcheo(_ arr: [[Int]], _ m: Int){
    var sum: Int = 0
    for i in 0..<m{
        sum += arr[i][i]
    }
    print(sum)
}

//Viết hàm kiểm tra ma trận có phải là ma trận đối xứng
func arrSymmetry(_ arr: [[Int]], _ m: Int){
    var dem = 0
    for i in 0..<m {
        for j in 0..<m{
            if arr[i][j] != arr[j][i]{
                dem += 1
            }
        }
    }
    if dem > 0 {
        print("Đây không phải ma trận đối xứng")
        } else {
        print("Đây là ma trận đối xứng")
        }
}

