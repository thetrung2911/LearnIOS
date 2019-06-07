//
//  bai5.swift
//  TestNo1
//
//  Created by Trung Le on 6/6/19.
//  Copyright © 2019 Trung Le. All rights reserved.
//

import Foundation
/*
 5. Nhập vào số tự nhiên 2 =< m, n < 8, hãy dựng thành một ma trận có m hàng và n cột, các phần tử là số tự nhiên được sinh ngẫu nhiên (random) < 10, in ra màn hình ma trận này
 6. Từ kết quả bài 5 hãy viết hàm để chuyển vị ma trận
 */
func bai5(){
    print("Nhâp số m:")
    let m = Int(readLine()!)!
    print("Nhâp số n:")
    let n = Int(readLine()!)!
    var arr5 = Matrix(rows: m, columns: n)
    for i in 0..<m {
        for j in 0..<n{
            arr5[i,j] = Double(Int.random(in: 0..<10))
            print (arr5[i,j], terminator: " ")
        }
        print("")
    }
    print("")
    var arr6 = Matrix(rows: n, columns: m)
    for i in 0..<n{
        for j in 0..<m{
            arr6[i,j] = arr5[j,i]
            print (arr6[i,j], terminator: " ")
        }
        print("")
    } 
}
struct Matrix {
    let rows: Int, columns: Int
    var grid: [Double]
    init(rows: Int, columns: Int) {
        self.rows = rows
        self.columns = columns
        grid = Array(repeating: 0.0, count: rows * columns)
    }
    func indexIsValid(row: Int, column: Int) -> Bool {
        return row >= 0 && row < rows && column >= 0 && column < columns
    }
    subscript(row: Int, column: Int) -> Double {
        get {
            assert(indexIsValid(row: row, column: column), "Index out of range")
            return grid[(row * columns) + column]
        }
        set {
            assert(indexIsValid(row: row, column: column), "Index out of range")
            grid[(row * columns) + column] = newValue
        }
    }
}
