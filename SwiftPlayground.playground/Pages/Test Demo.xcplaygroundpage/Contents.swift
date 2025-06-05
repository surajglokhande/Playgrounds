//: [Previous](@previous)

import Foundation

/*class Vehicle {
	func move() {
		print("Moving")
	}
}

class Car: Vehicle {
	func honk() {
		print("Honking")
	}
}

class Bicycle: Vehicle {
	func ringBell() {
		print("Ringing bell")
	}
}

	//USAGE
let car = Car()
let bike = Bicycle()
var vehicle: Vehicle

vehicle = car
vehicle.move() // Output: "Moving"

vehicle = bike
vehicle.move() // Output: "Moving"
 */

//class Rectangle {
//	var width: Int
//	var height: Int
//
//	init(width: Int, height: Int) {
//		self.width = width
//		self.height = height
//	}
//
//	func area() -> Int {
//		return width * height
//	}
//}
//
//class Square: Rectangle {
//	override var width: Int {
//		didSet {
//			print(self.width)
//			super.height = width
//			print(self.height)
//		}
//	}
//
//	override var height: Int {
//		didSet {
//			print(self.width)
//			super.width = height
//			print(self.height)
//		}
//	}
//}
//
//func main() {
//	let square = Square(width: 5, height: 5)
//
//	square.height
//	square.width
//
//	let rectangle: Rectangle = square
//
//	rectangle.height = 7
//	rectangle.width = 5
//
//	print(square.area())
//		// As a rectangle we should expect the area as 7 x 5 = 35, but we got 5 x 5 = 100
//}
//
//main()
//
////: [Next](@next)


//struct Demo1 {
//	var d1: Bool? = nil
//}
//
//struct Demo2 {
//	var d2: Demo1?
//}
//
//struct Demo3 {
//	var d3: Demo2?
//}
//
//var obj1 = Demo1()
////obj1.d1 = nil
//var obj2 = Demo2()
//obj2.d2 = obj1
//var obj3 = Demo3()
//obj3.d3 = obj2
//let consent_status = obj3.d3?.d2?.d1
//debugPrint(consent_status)

//protocol Test {
//	var str: Test? { get set }
//}
//
//protocol TestOne: Test {
//	var str: TestOne? { get set }
//}

//import UIKit
//import PlaygroundSupport
//
//class MyViewController : UIViewController {
//	override func loadView() {
//		let view = UIView()
//		view.backgroundColor = .white
//
//		let label = UILabel()
//		label.frame = CGRect(x: 150, y: 200, width: 200, height: 20)
//		label.text = "Hello World!"
//		label.textColor = .black
//
//		view.addSubview(label)
//		self.view = view
//	}
//}
//	// Present the view controller in the Live View window
//PlaygroundPage.current.liveView = MyViewController()

//struct Demo: Codable {
//	let name: String?
//	let id: ID?
//}
//
//struct ID: Codable {
//	let number: String?
//}
//
//struct Practice {
//	func setData() {
//		let obj = Demo(name: "suraj", id: ID(number: "1"))
//		let jsonData = try? JSONEncoder().encode(obj)
//		let jsonString = String(data: jsonData!, encoding: .utf8)
//		UserDefaults.standard.set(jsonString, forKey: "Demo")
//		UserDefaults.standard.synchronize()
//	}
//
//	func getData() {
//		if let jsonString = UserDefaults.standard.value(forKey: "Demo") as? String {
//			let jsonData = Data(jsonString.utf8)
//			guard let payload = try? JSONDecoder().decode(Demo.self, from: jsonData) else { return }
//			debugPrint(payload)
//		}
//	}
//}
//
//let p = Practice()
//p.setData()
//p.getData()

//let flag = "REG"
//if (flag != "REG" || flag != "REG1") {
//	print("true")
//}else{
//	print("false")
//}
//
//let flag1 = "REG"
//if (flag1 != "REG" && flag1 != "REG1") {
//	print("true")
//}else{
//	print("false")
//}

func demo() {
//	var x = 14
//	print(x)
//	var y = x
//	y = 5
//	print(x)
//	print(y)
//    let twoThousand: UInt16 = 2_000
//    let one: UInt8 = 1
//    let twoThousandAndOne = twoThousand + UInt16(one) // Explicit conversion
//    print(twoThousandAndOne)
    
    
    
    enum STR {
        case One
        case Two
        case THREE
    }
    
    var str: STR
    str = .THREE
    var str2 = "One"
    
    switch str {
    case .One:
        print("one")
    case .Two:
        print("two")
    @unknown default:
        print("default")
    }
}

demo()







