//: [Previous](@previous)
/*:
 ## What are Asynchronous Sequences?
 
 Imagine you have a series of values that don't all appear at once. Instead, they arrive incrementally, perhaps from a network stream, a file being read line by line, or a continuous flow of events. A regular "synchronous" sequence would require all values to be available before you could iterate through them.
 
 An asynchronous sequence is like a regular sequence, but it allows you to iterate over these values as they become available, potentially pausing execution until the next value arrives, and then resuming without blocking the entire program. This is ideal for I/O-bound operations where your program would otherwise be idle, waiting for data.
 */
//: [Next](@next)
