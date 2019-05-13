//
//  MyFishSwift.swift
//  SwiftBasic
//
//  Created by Trung Le on 4/25/19.
//  Copyright © 2019 Trung Le. All rights reserved.
//

import Foundation
func chiaHet(){
    print("Hay nhap 2 so vao: ")
    
    var c: Int = Int(readLine()!)! //khai bao bien: var tenbien: <kieu du lieu> = gia_tri
    var d: Int = Int(readLine()!)!
    
    if c % d == 0 {
        print("So \(c) chia het cho \(d)")
    }else{
        print("So \(c) khong chia het cho \(d)")
    }
}
func sumNumber(){
    print("Hay nhap 2 so vao: ")
    
    var a: Int = Int(readLine()!)!
    var b: Int = Int(readLine()!)!
    
    print("Tong hai so \(a) va \(b) la: \(a + b)")
}
var str1: String = "Hi you"
var str2: String? = readLine() // ?: bien ko duoc luu

func sayHello(){
    print("hi")
    print(str1)
    print(str2!) // !: bo tu truoc
    
    print("Hello \(str2!)")
    print("How are you?", terminator: " ")
    print("i'm fine")
    
}
