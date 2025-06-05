//: [Previous](@previous)
/*:
 ## Liskov Substitution Principle (LSP):
 The LSP states that objects of a superclass should be replaceable with objects of its subclasses without affecting the correctness of the program. In other words, the subclasses should be able to substitute their parent classes without causing unexpected behavior.
 */
/*:
 problem One
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
//: [Next](@next)
