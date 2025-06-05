//: [Previous](@previous)
/*:
 ## Interface Segregation Principle (ISP):
 The ISP states that clients should not be forced to depend on interfaces they do not use.to avoid unnecessary dependencies.

 no code should be forced to depend on methods it does not use.
 */
struct Document {

}

protocol Printer {
	func printDocument(_ document: Document)
}

protocol Scanner {
	func scanDocument() -> Document
}

class AllInOnePrinter: Printer, Scanner {
	func printDocument(_ document: Document) {
			// Code to print the document
	}

	func scanDocument() -> Document {
		return Document()// Code to scan and return a document
	}
}

class SimplePrinter: Printer {
	func printDocument(_ document: Document) {
			// Code to print the document
	}
}
//: [Next](@next)
