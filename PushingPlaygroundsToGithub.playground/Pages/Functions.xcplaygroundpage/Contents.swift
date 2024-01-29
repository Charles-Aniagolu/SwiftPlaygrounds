//Function
import Foundation


/*
  A function is a re-usable and self-contained block of code tht performs a specific task. It is a fundamental building block in Swift programming and allows you to organize you code, make it modular, and promote code    reuse.
 
//Function code annotation
func functionName(parameter1: Type, parameter2: type, ...) -> ReturnType{
    //function body
    // Code to perform a specific task
    return Result
}
 */


//examples of function usage. E.g addition function

//Function definition
func addNumbers(a: Int, b: Int) -> Int{
    return a + b
}
//function call
let sum = addNumbers(a: 5, b: 3)
print("sum: \(sum)")



//Example 2: String Concatenation Function

//function Definition
func concatenateString(str1: String, str2: String) -> String {
    return str1 + str2
}
//function call
let resultString = concatenateString(str1: "Hello", str2: "World")
print("concatenated String:  \(resultString)")




//Example 3. Calculate Area of a Circle

//function definition
func calculateCircleArea(radius: Double) -> Double {
    return 3.14 * radius * radius
}
//function call
let area = calculateCircleArea(radius: 4.0)
print("Circle Area: \(area)")


//Example 4: Check if a number is Even
func isEven(number: Int) -> Bool {
    return number % 2 == 0
}
//function call
let checkEven = isEven(number: 7)
print("Is Even? \(checkEven)")



//Example 5: Greet a User

//function definition
func greetUser(name: String) -> String {
    return "Hello, \(name)!"
}

//function call
let greeting = greetUser(name: "John")
print(greeting)



//Example 6: Convert Fahrenheit to Celsius:

//Function definition
func fahrenheitToCelcius (fahrenheit: Double) -> Double {
    return (fahrenheit - 32) * 5 / 9
    
}
//function call
let resultFahrenheit =  fahrenheitToCelcius(fahrenheit: 24)

// Round to the nearest inteter
let roundedResult = round(resultFahrenheit)
print("fahrenheitToCelcius: \(roundedResult)")


//Example 7: Find the Maximun of Two Numbers.

//Function definition
func maxOfTwoNumbers(a: Int, b: Int) -> Int {
    //function body
    return a > b ? a : b // compact way: using ternary conditional operator
    
    /*
     OR a > b ? a : b (meaning)
     
     // if a > b return a else return b
    if a > b {
        return a
        
    }else {
        return b
    }
     */
}

//function call
let maxResult = maxOfTwoNumbers(a: 300, b: 600)
print("the maxOfTwoNumbers: \(maxResult)")



//Example 8: Generate Fibonacci Sequence.

//Function definition
func generateFibonacci(n: Int) -> [Int] {
    var sequence = [0, 1]
    while sequence.count < n {
        sequence.append(sequence.last! + sequence[sequence.count - 2])
    }
    return sequence
}

let resultFibonacci = generateFibonacci(n: 20)
print("GenerateFibonacci: \(resultFibonacci)")



//Example 9: Check if a number is a Palindrome.

//Function definition
func isPalindrome(str: String) -> Bool{
    return str == String(str.reversed())
}
//function call
let myPalindrome = isPalindrome(str: "mom")
print(myPalindrome)



//Example 10: Calculate Factorial

// function definition/annotation
func factorial(n: Int) -> Int {
    return n == 0 ? 1 : n * factorial(n: n - 1)
}
//function call
let myfact = factorial(n: 20)
print(myfact)
