//
//  bai8.swift
//  TestNo1
//
//  Created by Trung Le on 6/7/19.
//  Copyright © 2019 Trung Le. All rights reserved.
//


import Foundation
func bai8(){
    
    let NumColumns = 10
    let NumRows = 10
    var matrix:[[Int]] = [[Int]](repeating:[Int](repeating:0, count: NumColumns), count:NumRows)
    for i in 0..<5{
       setArr(&matrix, i)
    }
    for i in 0..<10{
        setAr(&matrix, i)
    }
    
    
    for i in 0..<matrix.count{
        for j in 0..<matrix[i].count{
            print(matrix[i][j], terminator: " ")
        }
        print("")
    }
    
}
func setArr(_ arr: inout [[Int]], _ cr: Int ){
    arr[0][0]=01
    if cr == 0 {
        arr[cr][cr] = 01
    }else{
        arr[cr][cr] = arr[cr-1][cr-1] + cr * 4
    }
    var b = 0
    var a = 0
    for i in (cr + 1)..<(arr[cr].count-cr){
        if (i+cr) % 2 == 1{
            arr[cr][i] = arr[cr][i-1] + 1 + cr * 2
        }else{
            b += 4
           arr[cr][i] = arr[cr][i-1] + cr * 2 + b
        }
    }
    for i in (cr+1)..<(arr.count-cr){
        if (i+cr) % 2 == 1{
            arr[i][cr]=arr[i-1][cr] + 2 + a + cr * 2
            a += 4
        }else{
            arr[i][cr]=arr[i-1][cr] + 1 + cr * 2
        }
    }
}
func setAr(_ arr: inout [[Int]], _ cr: Int ){
    for i in (arr[cr].count - cr)..<arr[cr].count{
        arr[cr][i] = arr[cr].count * arr[cr].count + 1 - arr[arr[cr].count - cr - 1][arr[cr].count - i - 1]
    }
}



