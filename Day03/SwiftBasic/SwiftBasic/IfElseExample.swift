//
//  IfElseExample.swift
//  SwiftBasic
//
//  Created by Trung Le on 4/25/19.
//  Copyright © 2019 Trung Le. All rights reserved.
//

import Foundation
func tamGiac(){
print("Hãy nhập 3 số bất kì: ")
let a: Int = Int(readLine()!)!
let b: Int = Int(readLine()!)!
let c: Int = Int(readLine()!)!

if (a + b > c) && (a + c > b) && (b + c > a){
    print("Đây là số đo 3 cạnh của 1 tam giác")
}else{
    print("Đây không phải 3 cạnh của 1 tam giác")
}
}
