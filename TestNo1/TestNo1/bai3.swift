//
//  bai3.swift
//  TestNo1
//
//  Created by Trung Le on 6/6/19.
//  Copyright © 2019 Trung Le. All rights reserved.
//

import Foundation
func bai3(){
    let array = [1, 2, 1, 2, 1, 3, 1, 4]
    
    var counts = [Int: Int]()
    
    // đếm số lần xuất hiện từng phần tử bằng forEach
    array.forEach { counts[$0] = (counts[$0] ?? 0) + 1 }
    
    // xuất phần tử xuất hiện nhiều nhất
    if let (value, count) = counts.max(by: {$0.1 < $1.1}) {
        print("\(value) xuất hiện nhiều nhất với \(count) lần")
    }
    
}
