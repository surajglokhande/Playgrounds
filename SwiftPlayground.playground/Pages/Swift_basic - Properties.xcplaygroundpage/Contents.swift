/*:
[Previous](@previous)
# Properties
 ## Stored Properties:
 - Stored properties are the simplest form of properties - they store values as part of an instance
  */
 //**Value Types (Structures):**
 struct FixedLengthStruct {
     var firstValue: Int
     let length: Int
 }
 var s1 = FixedLengthStruct(firstValue: 1, length: 2)
 let s2 = FixedLengthStruct(firstValue: 3, length: 4)

 s1.firstValue = 10
 s1.length = 20 //Cannot assign to property: 'length' is a 'let' constant

 s2.firstValue = 30 //Cannot assign to property: 's2' is a 'let' constant
 s2.length = 40 //Cannot assign to property: 'length' is a 'let' constant

 // Reference Types (Classes):
 class FixedLengthClass {
     var firstValue: Int = 0
     let length: Int = 0
 }
 var c1 = FixedLengthClass()
 let c2 = FixedLengthClass()

 c1.firstValue = 10
 c1.length = 20 //Cannot assign to property: 'length' is a 'let' constant

 c2.firstValue = 30
 c2.length = 40 //Cannot assign to property: 'length' is a 'let' constant
/*:
 ## Computed Properties:
- Computed properties don't store a value directly but rather provide a getter and an optional setter to retrieve and set other properties indirectly
 */
 struct Point {
     var x = 0.0, y = 0.0
 }

 struct Size {
     var width = 0.0, height = 0.0
 }

 struct Rect {
     var origin = Point()
     var size = Size()
     var center: Point {  // computed property
         get {
             Point(x: origin.x + (size.width / 2),
                   y: origin.y + (size.height / 2))
         }
         set {
             origin.x = newValue.x - (size.width / 2)
             origin.y = newValue.y - (size.height / 2)
         }
     }
 }
/*:
 ## Property Observers
  - Property observers let you monitor and respond to changes in a property's value
    - **willSet:** Called just before the value is stored
    - **didSet:** Called immediately after the new value is stored
 */
 struct Demo {
     var amount: Int {
         willSet  {
                 // Here you can use vc as the old value since it's not changed yet
             print("willSet Old value is \(String(describing: self.amount))")
             print("willSet New value is \(String(describing: newValue))")
         }
         didSet {
                 // Here you can use vc as the new value since it's already DID set
             print("didSet New value is \(String(describing: self.amount))")
             print("didSet Old value is \(String(describing: oldValue))")
         }
     }

     var name: String {
         willSet (newValue) {
                 // Here you can use vc as the old value since it's not changed yet
             print("willSet Old value is \(String(describing: name))")
             print("willSet New value is \(String(describing: newValue))")
         }
         didSet { oldValue
                 // Here you can use vc as the new value since it's already DID set
             print("didSet New value is \(String(describing: name))")
             print("didSet Old value is \(String(describing: oldValue))")
         }
     }

     var dummyMember: Int = 1
     var members: Int {
         get {
             return dummyMember
         }
         set { newValue
             if newValue >= 5 {
                 dummyMember = newValue
                 print("in if \(dummyMember)")
             } else {
                 print("in else \(newValue)")
             }
         }
     }

     lazy var lazyProperty: Int = 0
 }
 var d1 = Demo(amount: 10, name: "suraj")
 d1.amount = 11
 d1.name = "dhiraj"
 print(d1.members)
 d1.members = 4
/*:
 ## Type Properties
  - Type properties belong to the type itself, not to instances of that type. you declare them using the static keyword:
  */
 struct SomeStructure {
     static var storedTypeProperty = "Some value"
     static var computedTypeProperty: Int {
         return 1
     }
 }
/*:
 ## Property Wrappers
  - Property wrappers add a layer of separation between code that manages how a property is stored and the code that defines the property.
 */
 @propertyWrapper
 struct TwelveOrLess {
     private var number = 0
     var wrappedValue: Int {
         get { return number }
         set { number = min(newValue, 12) }
     }
 }

 struct SmallRectangle {
     @TwelveOrLess var height: Int
     @TwelveOrLess var width: Int
 }
/*:
 ## Key Points to Remember:

 - Stored properties are only available in classes and structures, not in enumerations
 - Computed properties can be used in classes, structures, and enumerations
 - Property observers can be added to:
    - Stored properties you define
    - Properties that a subclass inherits
    - Computed properties (by putting the observers in the setter)
 - Type properties are shared across all instances of a type
 - Property wrappers help reduce repetitive code for properties that need similar patterns
 
 ## Lazy Stored Properties

 - **Initialization:** Lazy properties are not initialized until they are accessed for the first time.
 - **Declaration:** Must always be declared with the var keyword because their value isn't known until after initialization.
 - **Use Cases:** Ideal for properties that are computationally expensive to initialize or dependent on external factors that aren't available during the initial setup.
 */
class DataImporter {
    /*
    DataImporter is a class to import data from an external file.
    The class is assumed to take a nontrivial amount of time to initialize.
    */
    var filename = "data.txt"
    // The DataImporter class would provide data importing functionality here
}

class DataManager {
    lazy var importer = DataImporter()
    var data: [String] = []
    // The DataManager class would provide data management functionality here
}

let manager = DataManager()
manager.data.append("Some data")
manager.data.append("Some more data")
// The DataImporter instance for the importer property hasn't yet been created

print(manager.importer.filename)
// The DataImporter instance for the importer property has now been created
// Prints "data.txt"
/*:
 **Benefits:**

 - **Performance Optimization:** By deferring the initialization of DataImporter, we avoid unnecessary performance costs when the importer property isn't used.
 - **Memory Efficiency:** Resources are allocated only when needed, leading to better memory management.
 
 **Important Note:**

 - **Thread Safety:** If a lazy property is accessed by multiple threads simultaneously, there's no guarantee that the property will be initialized only once. This can lead to race conditions and inconsistent states.
*/
//: [Next](@next)


