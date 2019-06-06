//
//  bai1.swift
//  ExLogic
//
//  Created by Trung Le on 6/6/19.
//  Copyright © 2019 Trung Le. All rights reserved.
//

import Foundation
// tổng các phần tử từ 0-n
func bai1(){
    print("Nhập vào số nguyên N:")
    let n = Int(readLine()!)!
    var sum = 0
    for i in 0 ... n {
        sum += i
    }
    print(sum)
}
