//
//  bai6.swift
//  ExLogic
//
//  Created by Trung Le on 6/6/19.
//  Copyright © 2019 Trung Le. All rights reserved.
//

import Foundation
/*
 1. Tăng j cho đến khi bạn chạm vào ranh giới ma trận bên phải
 2. Tăng i cho đến khi bạn chạm vào ranh giới ma trận ở phía dưới
 3. Giảm j cho đến khi bạn chạm vào ranh giới ma trận bên trái
 4. Giảm i cho đến khi bạn đạt ranh giới ma trận ở trên cùng
 5. Lặp lại bước 1 - 4, thay thế "ranh giới ma trận" cho "ô không trống"
 */
func bai6(){
    print("Nhập số cột:")
    let NumColumns = Int(readLine()!)!
    print("Nhập số hàng:")
    let NumRows = Int(readLine()!)!
    var matrix:[[Int]] = [[Int]](repeating:[Int](repeating:0, count: NumColumns), count:NumRows)
    
    var i = 0
    var j = 0
    
    var deltaI = 0
    var deltaJ = 1
    
    for number in 1...(NumColumns*NumRows) {
        matrix[i][j] = number
        
        let nextI = i + deltaI
        let nextJ = j + deltaJ
        
        let nextCellIsEmpty = (0..<NumColumns ~= nextI) && (0..<NumRows ~= nextJ) && (matrix[nextI][nextJ] == 0)
        
        
        if !nextCellIsEmpty {
            if deltaJ == 1 { deltaI = 1; deltaJ = 0; }
            else if deltaI == 1 { deltaI = 0; deltaJ = -1; }
            else if deltaJ == -1 { deltaI = -1; deltaJ = 0; }
            else if deltaI == -1 { deltaI = 0; deltaJ = 1; }
        }
        
        i += deltaI
        j += deltaJ
    }
    
    matrix.forEach { print($0) }
}
