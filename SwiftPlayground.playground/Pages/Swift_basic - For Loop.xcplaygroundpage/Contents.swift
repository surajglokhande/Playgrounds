//: [Previous](@previous)

import Foundation

func demo() {
    var str = ["1","2","3","4","5","6","7","8","9"]
    for item in stride(from: 8, through: 0, by: -1) {
        print(str[item])
    }
    print("\n")
    for item in stride(from: 8, to: 0, by: -1) {
        print(str[item])
    }
    
//    for index in 0...5 {
//        print(str[index])
//    }
}
demo()

//: [Next](@next)
