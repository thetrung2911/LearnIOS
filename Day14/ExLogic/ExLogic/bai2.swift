//
//  bai2.swift
//  ExLogic
//
//  Created by Trung Le on 6/6/19.
//  Copyright © 2019 Trung Le. All rights reserved.
//

import Foundation
func bai2(){
    var arr = [1,19,62,7,8,32,12]
    var sum = 0
    for i in 0..<arr.count-1{
        sum = arr[i] + arr[i+1]
        if sum % 10 == 0{
            arr[i]=sum
            arr[i+1]=sum
        }
    }
    print(arr)
}
