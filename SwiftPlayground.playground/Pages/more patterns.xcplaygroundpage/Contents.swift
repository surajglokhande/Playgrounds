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
//Demo()
func giveOutput() {
    var array = [1, 2, 3]
    print(array.map { [$0, $0] })//  = [1,1])
    print(array.compactMap{ [$0, $0] })// = [1,1])
    print(array.flatMap{ [$0, $0] })// = [1,1])
}
//giveOutput()
func arrayFunc() {
    var array = [5,9,7,11,9,11]
    //don't use any predefined function like contains
    //keep the order of the elements same
    //removed dublicate element
    //output:
    // [5,9,7,11]

//    1st approch
//    for i in 0..<array.count {
//        var isDuplicate = false
//        for j in 0..<uniqueArray.count {
//            if array[i] == uniqueArray[j] {
//                isDuplicate = true
//                break
//            }
//        }
//        if !isDuplicate {
//            uniqueArray.append(array[i])
//        }
//    }

//  2nd approch
    var uniqueArray: [Int] = []
    var seenElements: [Int: Bool] = [:] // Using a dictionary/hash map for efficient lookup
    for element in array {
        // Check if the element has already been seen
        if seenElements[element] == nil { // If it's nil, the element hasn't been added yet
            uniqueArray.append(element)
            seenElements[element] = true // Mark the element as seen
        }
    }

    print(uniqueArray) // Output: [5, 9, 7, 11]
}
//arrayFunc()

/*:
 ## Second Largest Element in an Array
 */

func SecoundLargest() -> Int {
    var array = [12, 34, 1, 10, 34, 1]
//    Output: 34
//    Explanation: The largest element of the array is 35 and the second largest element is 34.
    
    var largest = array[0]
//    var secoundLargest = -1
    for item in array {
        if item > largest {
            largest = item
        }
//        else if item == largest {
//            largest = -1
//        }
    }
    return largest
}
print(SecoundLargest())
//: [Next](@next)
