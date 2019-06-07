//
//  bai4.swift
//  TestNo1
//
//  Created by Trung Le on 6/6/19.
//  Copyright © 2019 Trung Le. All rights reserved.
//

import Foundation
/*
 4. Nhập vào số tự nhiên 2 =< m, n < 8, hãy dựng thành một ma trận có m hàng và n cột, các phần tử là số tự nhiên được sinh ngẫu nhiên (random) < 10, in ra màn hình ma trận này
 */
    func bai4(){
        var array = [2, 1, 5, 4, 7, 8]
        // sắp xếp từ bé đến lớn
        array.sort()
        print(array)
        // đảo mảng
        array.reverse()
        print(array)
    }
