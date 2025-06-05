//: [Previous](@previous)

import Foundation

func Demo() {
    for i in 0...5 {
        for j in 0...5-i {
            print(j, terminator: " ")
        }
        print()
    }
}
Demo()
//print("\n")
//: [Next](@next)
