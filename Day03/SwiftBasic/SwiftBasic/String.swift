//
//  String.swift
//  SwiftBasic
//
//  Created by Trung Le on 4/25/19.
//  Copyright © 2019 Trung Le. All rights reserved.
//

import Foundation

func stringExample(){
    let currentDay = "Monday"
    let prefixDay = "To day is"
    
    print("Current day: \(currentDay) ")
    print("Prefix day: \(prefixDay) ")
    
    let today = prefixDay + " " + currentDay
    print(today)
    
    let newToday = prefixDay.appending(currentDay) // noi chuoi string
    print(newToday)
    
    print(today.uppercased()) // uppercased: viet thuong => viet hoa
    print(newToday.lowercased()) //lowercased: viet hoa => viet thuong
    
    let helloString: String = "Hello"
    
    for character in helloString {
        print(character)
    }
    
    let  reveredString = String(helloString.reversed())
    
    for reversed in reveredString {
        print(reversed)
    }
    
    
    let stringZezo: String = ""
    print(currentDay.isEmpty) //isEmpty: kiem tra chuoi rong hay ko
    print(stringZezo.isEmpty)
    
    
    print(today.prefix(7)) // kiểm tra tiền tố string
    
    print(today.suffix(7)) // kiểm tra hậu tố string
    
    // Đảo chuỗi
    let reversedToday = today.reversed()
    print(String(reversedToday))
    
    // Kiểm tra chuỗi có trong chuỗi ko
    print(today.contains("Monday"))
    
    
    let arrayString = ["This", "Is", "Class", "IOS"]
    let stringArray = arrayString.joined() //nối các phần tử thành 1 chuỗi trong mảng
    
    print(stringArray)
    
    let stringArrayy = arrayString.joined(separator: " ")
    print(stringArrayy.components(separatedBy: " "))
    
    
    
    
//    let momString: String = "MoM"
//    var count = momString.count
//
//    if count % 2 == 0 {
//
//    }
    
}

func characterExample(){
    let dogs: [Character] = ["D", "o", "g", "🐶"]
    let dog = String(dogs)
    print(dog)
    
    for character in dog{
        print(character)
    }
}
