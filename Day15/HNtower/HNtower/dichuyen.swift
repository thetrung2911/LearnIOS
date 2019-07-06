
import Foundation
func dichuyen(_ n: Int, _ A: String, _ B: String, _ C: String){
    if n == 1{
        print("\(A) ---> \(C)")
        return;
    }
    dichuyen(n - 1, A, C, B)
    dichuyen(1, A, B, C)
    dichuyen(n - 1, B, A, C)
}
