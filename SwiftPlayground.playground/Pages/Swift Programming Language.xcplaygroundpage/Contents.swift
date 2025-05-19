/*:
[Previous](@previous)
# Swift Programming Language

## Control Transfer Statements
Control transfer statements change the order in which your code is executed, by transferring control from one piece of code to another. Swift
has five control transfer statements:

	continue
 */

let puzzleInput = "great minds think alike"
var puzzleOutput = ""
let charactersToRemove: [Character] = ["a", "e", "i", "o", "u", " "]
for character in puzzleInput {
	if charactersToRemove.contains(character) {
		continue
	}
	puzzleOutput.append(character)
}
print(puzzleOutput)


/*:
	break
 */

/*:
	fallthrough
 */

let integerToDescribe = 5
var description = "The number \(integerToDescribe) is"
switch integerToDescribe {
	case 2, 3, 5, 7:
		description += " a prime number, and also"
		fallthrough
//	case 11, 13, 17, 19:
//		description += " again a prime number"
//		break
	default:
		description += " an integer."
}
print(description)
/*:
	return
 */

/*:
	throw
 */


//: [Next](@next)
