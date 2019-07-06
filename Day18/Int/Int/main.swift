//
//  main.swift
//  Int
//
//  Created by Trung Le on 6/25/19.
//  Copyright © 2019 Trung Le. All rights reserved.
//

//
//  main.swift
//  soNguyenTo
//
//  Created by Ba Thoc on 6/25/19.
//  Copyright © 2019 Ba Thoc. All rights reserved.
//

import Foundation
import Cocoa

let n: Int = 100
var intArray: [Int] = Array()
var x : Int = 5

func snt() {
    for i in 2...n {
        var laSnt: Bool = true
        if i == 2 || i == 3 {
            intArray.append(i)
        }
        if i == 1 || i % 2 == 0 || i % 3 == 0 {
            laSnt = false
        }
        let m = Int(sqrt(Double(i)))
        while x < m {
            x += 6
            if(i % x == 0 || i % (x+2) == 0) {
                laSnt = false
            }
        }
        if laSnt {
            intArray.append(i)
        }
    }
}

func sntt() {
    func trung(_ n: Int)->[Int]{
        var arr = [2,3]
        for num in Array(4...n){
            var is_prime = true
            var i = 1
            let half_num = num/2 + 1
            var numArr = arr[i]
            while numArr < half_num{
                if num % numArr == 0 {
                    is_prime = false
                    break
                }
                i += 1
                numArr = arr[i]
            }
            if is_prime{
                arr.append(num)
            }
        }
        return arr
    }
}

func sntc() {
    func isPrimeNumber(n : Int) -> Bool{
        if n <= 1 {
            return false
        }
        if n <= 3 {
            return true
        }
        for i in 2...n / 2{
            if n % i == 0{
                return false
            }
        }
        return true
    }
    
    for i in 1...100{
        if isPrimeNumber(n: i){
//            print(i)
        }
    }
}
func snttt(){
    func trung(_ n: Int)->[Int]{
        var arr = [2,3]
        for num in Array(4...n){
            var is_prime = true
            var i = 1
            let half_num = num/2 + 1
            var numArr = arr[i]
            while numArr < half_num{
                if num % numArr == 0 {
                    is_prime = false
                    break
                }
                i += 1
                numArr = arr[i]
            }
            if is_prime{
                arr.append(num)
            }
        }
        return arr
    }
}


func testSpeedHao() {
    for _ in 0..<100000{
        snt()
    }
}
func testSpeedTrung() {
    for _ in 0..<100000{
        sntt()
    }
}
func testSpeedt() {
    for _ in 0..<100000{
        snttt()
    }
}
func testSpeedCuong() {
    for _ in 0..<100000{
        sntc()
    }
}

func measure<A>(name: String = "", _ block: () -> A) {
    let startTime = CACurrentMediaTime()
    let _ = block()
    let timeElapsed = CACurrentMediaTime() - startTime
    print("Time: \(name) - \(timeElapsed)")
}
measure{testSpeedt()}
measure { testSpeedHao() }
measure { testSpeedTrung() }
measure { testSpeedCuong() }

