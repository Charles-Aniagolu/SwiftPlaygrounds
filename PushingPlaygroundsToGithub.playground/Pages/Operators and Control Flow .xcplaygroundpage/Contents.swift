import UIKit

//Swift Operators

let additionResult = 10 + 5         // addition
let subtractionResult = 20 - 8      // substraction
let multiplicationResult = 6 * 4    // multiplication
let divisionResult = 24 / 3         // division
let moduluResult = 15 % 7           // modulus


//Comparison Operators
let isEqual = (10 == 5)             // ==
let isNotEqual = (20 != 8)          // !=
let isGreater = (6 > 4)             // >
let isLess = (24 < 3)               // <
let isGreaterOrEqual = (15 >= 7)    // >=


//Logical Operators: such as &&, ||, !
let andResult = true && false
let orResult = true || false
let notResult = !true
print(notResult)


//Assignment Operators
var x = 5
x += 3     // x is now 8
x -= 2     // x is now 6
x *= 4     // x is now 24
x /= 3     // x is now 8


//Nil Coalescing Operator
let userInput: String? = nil
let userName = userInput ?? "Guest"


//Swift Control Flow

let temperature = 25
if temperature > 30{
    print("It is a hot today")
}
else{
    print("It's not too hot")
}

//Switch Statements
let dayOfWeek = "Wednesday"
switch dayOfWeek {
case "Monday", "Wednesday", "Friday":
    print("It's a workday.")
default:
    print("It's a weekend. ")
}

// For-in Loop
let numbers = [1, 2, 3, 4, 5]
for number in numbers {
    print("current number is \(number)")
}

//While Loop
var counter = 0
while counter < 5{
    print("Counter is \(counter)")
       counter += 1
}
     

//Guard Statement
func processInput(_ input: String?){
    guard let unwrappedInput = input else {
        print("input is nil. ")
        return
    }
    print("Processing input: \(unwrappedInput)")
}


//If Statements including Else and Else if
let timeOfDay = "morning"
if timeOfDay == "morning"{
    print("Good morning!")
}else if timeOfDay == "afternoon!"{
    print("Good afternoo!")
    
}else{
    print("Good evening!")
}
 


//Do-While Loop
var repeatCount = 3
repeat{
    print("this will be repeated  \(repeatCount) times.")
    repeatCount -= 1
}while repeatCount > 0

//Branching Statements (Break, Continue, Return)

//Break
for i in 1...10 {
    if i == 5 {
        break
    }
    print(i)
}

//Continue in a Loop
for i in 1...10 {
    if i % 2 == 0 {
        continue
    }
    print(i)
}

//Return in a function

func multiplyByTwo(_ number: Int) -> Int {
    return number * 2
}

let result = multiplyByTwo(5)
print(result)





//manipulation


//var songs: [String] = []
var songs = [String]()


let anotherNumbers = Array(arrayLiteral: 1, 2, 3, 4, 5, 6)

