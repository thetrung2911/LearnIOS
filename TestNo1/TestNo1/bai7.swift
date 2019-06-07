//
//  bai7.swift
//  TestNo1
//
//  Created by Trung Le on 6/6/19.
//  Copyright © 2019 Trung Le. All rights reserved.
//

import Foundation
/*
 7. Cho một mảng gồm n số tự nhiên không trùng lặp, nhập vào một số tự nhiên K, hãy tìm ra tất cả những cặp 2 số không quan tâm đến thứ tự mà tổng của chúng gần bằng K nhất
 */
func bai7(){
    var arr = [2, 1, 4, 5, 7, 3, 6, 9, 8]
    var sum = 0
    var arrs = [[Int]]()
    
    
    print("Nhập vào số K: ")
    let K = Int(readLine()!)!
    var a = K
    
    for i in 0..<arr.count {
        for j in i+1..<arr.count{
            sum = arr[i] + arr[j]
            if abs(sum-K) < a{
                a = abs(sum-K)
               arrs.removeAll()
                arrs.append([arr[i],arr[j]])
            }else if abs(sum-K) == a {
                arrs.append([arr[i],arr[j]])
            }else{
                continue
            }
        }
    }
    print(arrs)
}
