//: [Previous](@previous)
import Foundation

struct Stack<Element> {
    var storage: [Element] = []
    
    mutating func push(_ element: Element) {
        storage.append(element)
    }
    
    @discardableResult
    mutating func pop(_ element: Element) -> Element? {
        storage.popLast()
    }
}
var stack = Stack<Int>()
print(stack.push(1))
print(stack.push(2))
print(stack.push(3))
print(stack.push(4))


//: [Next](@next)
