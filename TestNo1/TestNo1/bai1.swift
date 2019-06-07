//
//  bai1.swift
//  TestNo1
//
//  Created by Trung Le on 6/6/19.
//  Copyright © 2019 Trung Le. All rights reserved.
//

import Foundation
/*
 1. Cho một mảng gồm n số tự nhiên, hãy viết hàm tính tổng n phần tử.
 */
func bai1(){
    let array = [2,5,10,15,30]
    var sum = 0
    for i in array{
        sum += i
    }
    print(sum)
}
