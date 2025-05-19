 //: [Previous](@previous)
/*:
 # Class Vs Struct
 ###          Both structures and classes in Swift can:

 - **Define Properties:** Store values.
 - **Define Methods:** Provide functionality.
 - **Define Subscripts:** Access values using subscript syntax.
 - **Define Initializers:** Set up their initial state.
 - **Be Extended:** Expand functionality beyond the default implementation.
 - **Conform to Protocols:** Provide standard functionality of a certain kind.
 
 ### Additional Capabilities of Classes

 - **Inheritance:** One class can inherit the characteristics of another.
 - **Type Casting:** Check and interpret the type of a class instance at runtime.
 - **Deinitializers:** Enable an instance of a class to free up any resources it has assigned.
 - **Reference Counting:** Allows more than one reference to a class instance.
 
 ## Structures and Enumerations Are Value Types in Swift

 **Value Types**
 - **Definition:** A value type is a type whose value is copied when it’s assigned to a variable or constant, or when it’s passed to a function.
 
 - **Examples:** All basic types in Swift (integers, floating-point numbers, Booleans, strings, arrays, and dictionaries) are value types and are implemented as structures.
 
 **Behavior of Value Types**
 - **Copying:** Structures and enumerations are always copied when they are passed around in your code. This means that each instance is a unique copy, independent of the original.
 
 ### Optimization for Collections in Swift

 **Copy-on-Write (CoW) Optimization**
 - **Definition:** Swift collections like arrays, dictionaries, and strings use a technique called Copy-on-Write (CoW) to optimize performance. Instead of making a copy immediately when a collection is assigned to a new variable or passed to a function, the collection shares its memory with the original instance. A copy is made only when one of the instances is modified.
 
 **How It Works**
 - **Shared Memory:** Initially, both the original and the new instance share the same memory.
 - **Copy on Modification:** When one of the instances is modified, Swift creates a copy of the collection to ensure that the modification does not affect the other instance.
  */
//: [Next](@next)
