
import UIKit

//Swift Operators, Control Flow and Loops



//If statement


/*
 if Statement
 An if statement executes a code block when its condition evaluates to true. If the condition is false, the code block does not execute.
 */


var learnToCode = true
if learnToCode {
    print("You become a programmer")
}



//Else statement

/*
 else Statement
 An else statement is a partner to an if statement. When the condition for the if statement evaluates to false, the code within the body of the else will execute
 */



var turbalence = false
if turbalence {
    print("Please stay seated")
}else{
    print("You may freely move around")
}




// Else if Statement



/*
 else if Statement
 An else if statement provides additional conditions to check for within a standard if/else statement. else if statements can be chained and exist only after an if statement and before an else
 */


var weather = "rainy"
if weather == "sunny" {
    print("Grab some sunscreen")
    
}else if weather == "rainy"{
    print("Grab an Unbrella")
}else if weather == "snowing"{
    print("Wear your snow boots")
}else{
    print("Invalid weather")
}


//Comparison Operator
/*
 
 Comparison operators compare the values of two operands and return a Boolean result:

 < less than
 > greater than
 <= less than or equal to
 >= greater than or equal to
 == equal to
 != not equal to
 */

5 > 1  //true
6 < 10  //true
2 >= 3  //false
3 <= 5  //true

"A" == "a"  // false
"B" != "b"   // true


// Ternary Conditional Operator



/*
 Ternary Conditional Operator
 The ternary conditional operator, denoted by a ?, creates a shorter alternative to a standard if/else statement. It evaluates a single condition and if true, executes the code before the :. If the condition is false, the code following the : is executed
 */

var driverLicense = true
driverLicense ? print("Driver's Seat") : print("Passenger's Seat")

//Switch Statement



/*
 The switch statement is a type of conditional used to check the value of an expression against multiple cases. A case executes when it matches the value of the expression. When there are no matches between the case statements and the expression, the default statement executes.
 */



var secondaryColor = "green"
switch secondaryColor {
    
case "orange":
    print("Mix of orange and yellow")
    
case "green":
    print("Mix of blue and yellow")
    
case "puple":
    print("Mix of red and blue")
    
default:
    print("This might not be a secondary color.")
    
}


// Switch Statement: Interval Matching


/*
 switch Statement: Interval Matching
 Intervals within a switch statement’s case provide a range of values that are checked against an expression.
 */

let year = 1905
var artPeriod: String

switch year {
case 1860...1885:
    artPeriod = "Impressionism"
case 1886...1910:
    artPeriod = "Post Impressionism"
case 1912...1935:
    artPeriod = "Expressionism"
default:
    artPeriod = "Unknown"
}


// Switch Statement: Compound Cases


/*
 A compound case within a switch statement is a single case that contains multiple values. These values are all checked against the switch statement’s expression and are separated by commas.
 */

let service = "Seamless"

switch service {
case "Uber", "Lyft":
    print("Travel")
case "DoorDash", "Seamless", "GrubHub":
    print("Restaurant delivery")
case "Instacart", "FreshDirect":
    print("Grocery delivery")
    
default:
    print("Unknown service")
}

// Switch Statement: Where Clause



/*
 Within a switch statement, a where clause is used to test additional conditions against an expression.
 */

let num = 7

switch num {
case let x where x % 2 == 0:
    print("\(num) is even ")
case let x where x % 2 == 1:
    print("\(num) is odd")
default:
    print("\(num) is invalid")
}


// Logical Operator !



/*
 The logical NOT operator, denoted by a !, is a prefix operator that negates the value on which it is prepended.
 It returns false when the original value is true and returns true when the original value is false
 
 ! true    // false
 ! false   // true
 */

// Logical Operator &&

!true    // false
!false   // true


/*
 The logical AND operator, denoted by an &&, evaluates two operands and returns a Boolean result. It returns true when both operands are true and returns false when at least one operand is false.
 
 */


true && true    // true
true && false   // false
false && true   // false
false && false  // false

// Logical Operator ||


/*
 The logical OR operator, denoted by ||, evaluates two operands and returns a Boolean result. It returns false when both operands are false and returns true when at least one operand is true.

 true || true    // true
 true || false   // true
 false || true   // true
 false || false  // false
 
 */


true || true    // true
true || false   // true
false || true   // true
false || false  // false


// Combining Operators

/*
 Logical operators can be chained in order to create more complex logical expressions. When logical operators are chained, it’s important to note that the && operator has a higher precedence over the || operator and will get evaluated first.

 !false && true || false  // true

 
  

 !false && true evaluates first and returns true. Then, the expression, true || false evaluates and returns the final result, true.
 */
  

 false || true && false   // false


 /*
 true && false evaluates first which returns false. Then, the expression, false || false evaluates and returns the final result, false.
 */
 
 




 
 /*
  
  Controlling Order of Execution
  
  Within a Swift logical expression, parentheses, (), can be used to organize and control the flow of operations. The usage of parentheses within a logical expression overrides operator precedence rules and improves code readability.
  */



 
 // Without parentheses:

 true || true && false || false      // true

 // With parentheses:

 (true || true) && (false || false)  // false
 


// Swift Loops



//Ranges


/*
Ranges created by the ... operator will include the numbers from the lower bound to (and includes) the upper bound.
 
let zeroToThree = 0...3

zeroToThree: 0, 1, 2, 3
 
 */
 








/*
 Stride() Function
 
Calling stride() with the 3 necessary arguments creates a collection of numbers; the arguments decide the starting number to, the (excluded) ending number, and how to increment/decrement from the start to the end.

for oddNum in stride(from: 1, to: 5, by: 2) {
  print(oddNum)
}

// Prints: 1
// Prints: 3
 
 */
 
 








/*
 
for-in Loop
 
The for-in loop is used to iterate over collections, including strings and ranges.

for char in "hehe" {
  print(char)
}

// Prints: h
// Prints: e
// Prints: h
// Prints: e
continue Keyword
The continue keyword will force the loop to move on to the next iteration.

for num in 0...5 {
  if num % 2 == 0 {
    continue
  }
  print(num)
}

// Prints: 1
// Prints: 3
// Prints: 5
 */





 
 
//To terminate a loop before its completion, use the break keyword.
//break Keyword
for char in "supercalifragilisticexpialidocious" {
  if char == "c" {
    break
  }
  print(char)
}
 

// Prints: s
// Prints: u
// Prints: p
// Prints: e
// Prints: r
 
 

//Using Underscore

//Use _ instead of a placeholder variable if the variable is not referenced in the for-in loop body.

for _ in 1...3 {
  print("Olé")
}

// Prints: Olé
// Prints: Olé
// Prints: Olé
 
 



//while Loop


 /*
  
  
A while loop accepts a condition and continually executes its body’s code for as long as the provided condition is true.

If the condition is never false then the loop continues to run and the program is stuck in an infinite loop.

// The loop prints until the stop condition is met
  */




var counter = 1
var stopNum = Int.random(in: 1...10)

while counter < stopNum {
  print(counter)
  counter += 1
}
// The loop prints until the stop condition is met
print("the stop number is: \(stopNum)")





//---------------------------------------------------------

//Swift Operators
let additionResult = 10 + 5     //Addition
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
var inCounter = 0
while inCounter < 5{
    print("Counter is \(inCounter)")
       inCounter += 1
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



//Guard Statement: Annotation Annotation: guard condition else {  code to execute if condition is false  }

//Example 1 (Simple):

func myValidateAge(_ age: Int) {
    guard age >= 18 else {
        print("You must be 18 or older.")
        return
    }
    print("Welcome!")
}
print(myValidateAge(39))


//Switch Statement: Annotation: switch value { case pattern: code  default: code }


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


//For-In Loop:Annotation: for item in collection { code }
//Example 1 (Simple):

for number in 1...5 {
    print(number)
}

//Example 2 (Complex):
let names = ["Alice", "Bob", "Charlie"]
for name in names {
    print("Hello, \(name)!")
}

//While Loop: Annotation: while condition { code  }
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



