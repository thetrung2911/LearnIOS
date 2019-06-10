

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
