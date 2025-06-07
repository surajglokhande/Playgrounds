//: [Previous](@previous)
/*:
 ## Sendable Protocol:

 - This is a compile-time safety mechanism.
 - Types that conform to Sendable are guaranteed to be safe to pass across "concurrency domains" (e.g., between different tasks or actors).
 - Value types (structs, enums) are generally Sendable by default if their members are Sendable.
 - Classes are not Sendable by default because they are reference types and can be mutated from multiple places. You often need to protect shared class instances with actors or other synchronization mechanisms.
 
 */

//: [Next](@next)
