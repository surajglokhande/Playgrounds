//: [Previous](@previous)

import Foundation
func callmethod() {
     print("Dispatching a task asynchronously on a background queue")
    DispatchQueue.global().async {
      print("Perform background task")
        let result = fetchName()
        
      print("Dispatch Ul update on the main queue")
        DispatchQueue.main.async {
       print("Update UI with the result")
           displayName(result)
        }
    }
}
callmethod()

func fetchName() -> String {
 print("Simulate a time-consuming task")
    return "Pink Floyd"
}

func displayName(_ result: String) {
  print("Update UI")
    print(result)
}
//: [Next](@next)
