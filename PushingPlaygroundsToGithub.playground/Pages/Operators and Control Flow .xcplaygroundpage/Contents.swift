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


//----------------------------------------------------
 //Summary of control flow, loops and eary exits
 
 

func validateAge(_ age: Int) {
    guard age >= 18 else {
        print("You must be 18 or older.")
        return
    }
    print("Welcome!")
}
print(validateAge(40))




// If Statement : Annotation

let i = 10
if i > 5 {
    print("x is greater than 5")
}



//Guard Statement: Annotation Annotation: guard condition else { /* code to execute if condition is false */ }

//Example 1 (Simple):

func myValidateAge(_ age: Int) {
    guard age >= 18 else {
        print("You must be 18 or older.")
        return
    }
    print("Welcome!")
}
print(myValidateAge(39))


//Switch Statement: Annotation: switch value { case pattern: /* code */ default: /* code */ }
//Example 1 (Simple):

let day = "Monday"
switch day {
case "Monday":
    print("It's the start of the week.")
default:
    print("It's another day.")
}


//Example 2 (Complex):

enum TrafficLight {
    case red, yellow, green
}

let currentLight = TrafficLight.red
switch currentLight {
case .red:
    print("Stop")
case .yellow:
    print("Slow down")
case .green:
    print("Go")
}


//For-In Loop:Annotation: for item in collection { /* code */ }
//Example 1 (Simple):

for number in 1...5 {
    print(number)
}

//Example 2 (Complex):
let names = ["Alice", "Bob", "Charlie"]
for name in names {
    print("Hello, \(name)!")
}

//While Loop: Annotation: while condition { /* code */ }
//Example 1 (Simple):

var count = 0
while count < 5 {
    print(count)
    count += 1
}


//Example 2 (Complex):

var myTemperature = 25
while myTemperature > 20 {
    print("It's a warm day.")
    myTemperature -= 1
}



