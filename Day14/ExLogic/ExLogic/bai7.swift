//
//  bai7.swift
//  ExLogic
//
//  Created by Trung Le on 6/7/19.
//  Copyright © 2019 Trung Le. All rights reserved.
//

import Foundation
// Viết hàm xóa một dòng VÀ một cột trong ma trận
func bai7(){
    let NumColumns = 3
    let NumRows = 3
    var matrix:[[Int]] = [[Int]](repeating:[Int](repeating:0, count: NumColumns), count:NumRows)
    
    for i in 0..<NumRows{
        for j in 0..<NumColumns{
            matrix[i][j] = Int.random(in: 1...100)
            print(matrix[i][j], terminator: " ")
        }
        print("")
    }
//    delCol(arr: &matrix, col: 1)
    delRow(arr: &matrix, row: 1)
    for i in 0..<matrix.count{
        for j in 0..<matrix[i].count{
            print(matrix[i][j], terminator: " ")
        }
        print("")
    }
    
    
}
func delCol( arr: inout [[Int]], col: Int){
    for i in 0..<arr.count{
        arr[i].remove(at: col)
    }
}
func delRow( arr: inout [[Int]], row: Int){
          arr[row].removeAll()
}
