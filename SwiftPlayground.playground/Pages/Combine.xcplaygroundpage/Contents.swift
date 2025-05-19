//: [Previous](@previous)

import Combine


let publisher = (1...5).publisher

let publisher2 = publisher.map({ "item No. \($0)" })

let cancellable = publisher2.sink { data in
    debugPrint(data)
} receiveValue: { str in
    debugPrint("str: \(str)")
}


//: [Next](@next)
