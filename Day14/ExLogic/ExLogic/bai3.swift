//
//  bai3.swift
//  ExLogic
//
//  Created by Trung Le on 6/6/19.
//  Copyright © 2019 Trung Le. All rights reserved.
//

import Foundation
func bai3(){
    var arr = [[1,2,3],[6,5,4],[8,0,5]]
    var max = 0
    var min = 0
    
    
    for i in 0..<arr.count - 1{
        if arr[i].max()! < arr[i+1].max()! {
            max = arr[i+1].max()!
        }else{
            max = arr[i].max()!
        }
        if arr[i].min()! < arr[i+1].min()!{
            min = arr[i].min()!
        }else{
            min = arr[i+1].min()!
        }
       
    }
    for i in 0..<arr.count{
        for j in 0..<arr[i].count{
            print (arr[i][j], terminator: " ")
        }
        print("")
    }
    print(max)
    print(min)
}
