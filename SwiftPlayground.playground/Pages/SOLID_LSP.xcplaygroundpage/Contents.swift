//: [Previous](@previous)
/*:
 ## Liskov Substitution Principle (LSP):
 The LSP states that objects of a superclass should be replaceable with objects of its subclasses without affecting the correctness of the program. In other words, the subclasses should be able to substitute their parent classes without causing unexpected behavior.
 
 **Problem:**  Imagine a "Bird" class with a "fly()" method, and then you create an "Ostrich" subclass that inherits from "Bird" but cannot fly. If a part of your code expects a "Bird" and calls "fly()", substituting an "Ostrich" would cause a logical error or a runtime exception, breaking the program's correctness. LSP prevents such "surprises."
 */
/*:
    Problem One
 */
class Rectangle {
	var width: Int
	var height: Int

	init(width: Int, height: Int) {
		self.width = width
		self.height = height
	}

	func area() -> Int {
		return width * height
	}
}

class Square: Rectangle {
	override var width: Int {
		didSet {
			super.height = width
		}
	}

	override var height: Int {
		didSet {
			super.width = height
		}
	}
}

func main() {
	let square = Square(width: 10, height: 10)

	let rectangle: Rectangle = square

	rectangle.height = 7
	rectangle.width = 5

	print(rectangle.area())
		// As a rectangle we should expect the area as 7 x 5 = 35, but we got 5 x 5 = 25
}
main()
/*:
 problem One
 */
class Green {
   func getColor() {
      print("Green")
   }
}

class Blue: Green {
    override func getColor() {
      print("Blue")
   }
}

func main2() {
    var green: Green = Green()
    green.getColor()
      //output: Blue
}
main2()
/*:
 problem One : - respectiong Liskov Substitution Principle
 */
protocol IColor {
    func getColor()
}
class Green1: IColor {
    func getColor() {
        print("Green")
    }
}
class Blue1: IColor {
    func getColor() {
        print("Blue")
    }
}
func main1() {
    let color = Green1()
    color.getColor() // Output: Blue
}
main1()
//: [Next](@next)
