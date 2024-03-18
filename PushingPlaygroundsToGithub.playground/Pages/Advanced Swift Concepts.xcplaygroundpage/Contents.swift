//Advanced Functions, Closures and Generics

import Foundation

/*
 Closures in Swift are self-contained blocks of functionality that can be passed around and used in your code. They are similar to anonymous functions, lambdas, and blocks in other programming languages. Closures can capture and store references to any constants and variables from the context in which they’re defined. Swift handles memory management for capturing automatically.
 
 
 
      Closure Syntax
 
     { (parameters) -> ReturnType in {
     Statements
     }
 
 
 closures in Swift don't have a name in their syntax. Unlike functions, which have a defined name, closures are anonymous blocks of code that can be assigned to variables or passed as arguments to functions.

 Here's a basic syntax of a closure in Swift:

 ```swift
 { (parameters) -> ReturnType in
     // Closure body
     // Perform operations using parameters
     // Return value of ReturnType if applicable
 }
 ```

 In the above syntax:

 - `{}`: These curly braces denote the beginning and end of the closure.
 - `(parameters)`: Inside the parentheses, you can list the input parameters that the closure takes, if any. This part is optional, depending on whether the closure requires input parameters.
 - `ReturnType`: After the arrow `->`, you specify the return type of the closure, if it returns a value. This part is also optional, depending on whether the closure returns a value.
 - `in`: This keyword separates the parameter list and return type from the closure body.

 Since closures are anonymous, they are typically assigned to variables or passed directly as arguments to functions without being given a name. However, you can assign a closure to a variable and then refer to it by that variable name.

      
*/

/*
 
 Closure as Self-contained blocks of functionality:
 A closure is like a compact function that can be defined inline within your code.
 It captures variables and constants from its surrounding context, making it self-contained.
 Here’s an example of a simple closure that adds two integers:
 
 */

//Function Declaration and Definition Syntax

//Declaratiion
var closureName: (Int) -> Int

//Definition
let myClosure: (Int, Int) -> Int = { (a, b) in
    
  return a + b
}
let sumClosure = myClosure(5, 6)
print(sumClosure)


//Types of Swift Closure: Global functions defined in global scope
func add(a: Int, b: Int) -> Int {
    return a / b
}
let myDivide = add(a: 80, b: 20)
print(myDivide)

// Inline Closure expressions: unnamed closures
let additionClosure: (Int, Int) -> Int = { $0 + $1}

print(additionClosure(40, 50))


// popular and Easy Closure
let substract: (Int, Int) -> Int = {$0 - $1 }
print(substract(30, 15))

let greet: (String) -> String = { name in
    return "Hello, \(name) !"
}


// Closure Capturing
/*
 Closures capture and store references to variables and constants from the surrounding context in which they are defined. This ensures that the values are available even if the variables go out of scope.
 */

func makeIncrementer(incrementAmount: Int) -> () -> Int {
    var total = 0
    let incrementer: () -> Int = {
        total += incrementAmount
        return total
        
    }
    return incrementer
}
    
let incrementByTwo = makeIncrementer(incrementAmount: 2)
print(incrementByTwo())
print(incrementByTwo())
print(incrementByTwo())

//Example 2
func makeCounter() -> () -> Int {
    var count = 0
    let counter: () -> Int = {
        count += 1
        return count
    }
    return counter
}
let counter = makeCounter()
print(counter())
print(counter())





// Example

let addNumbers: (Int, Int) -> Int = { (a, b ) in
  return a * b
}
let sum = addNumbers(5, 3)
print(sum)


// Trailing Closure

//Example 1
func performOperation(a: Int, b: Int, operation: (Int, Int) -> Int) -> Int {
    return operation(a, b)
}

let iResult = performOperation(a: 5, b: 3) { $0 * $1 }
print(iResult)  // Output: 15

//Example 2
let specialNames = ["Alice", "Bob", "Charles"]
let sortedSpecialNames = specialNames.sorted {$0 < $1}
print(sortedSpecialNames)

// Closure and Reference Typea:
/*
 Closures are reference types in Swift. When a closure is assigned to a variable or passed as an argument to a function, the reference to the closure is captured.
 */

var closure1: () -> Void = { print("Closure1")}
var closure2 = closure1
print(closure1())
//closure2()





/*
 Closure as Passed around:
 You can assign closures to variables or constants, just like any other data type.
 They can be passed as arguments to functions or methods.
 Here’s an example where we pass a closure to the map function to transform an array of numbers:
 */

//Example 2.
let arrayNumbers = [8,9,2,1,7,28]
let squareArrayNumbers = arrayNumbers.map {($0 * $0)}
print(squareArrayNumbers)

/*
 Closure used in a code.
 Once you have a closure, you can invoke it using the closure’s name.
 You can call it wherever you need its functionality.
 Here’s an example of using a closure to sort an array of strings:
 */
let beautifulNames = ["Charles", "Eugene", "Cyril", "Esther", "Caroline", "Godfrey", "Nwaogbo", "Nebo"]
let sortedBeautifulNames = beautifulNames.sorted {($0 > $1)}
print(sortedBeautifulNames)





//Basic Closure without parameters
let moi: () -> Void = {
    print("Hello, Word!")
}
moi()



//Basic Closure with parameters
let greetUser: (String) -> Void = { name in
    print("Hey there \(name), ")
}
greetUser("Delilah")



//Closure that returns a value
let findSquare: (Int) -> Int = { num in
    let square = num * num
    return square
}

let result = findSquare(3)
print("the find square is: \(result)")




//Trailing Closure

let team = ["Gloria", "Suzanne", "Piper", "Tiffany", "Tasha"]
let captainFirstTeam = team.sorted { (name1, name2) -> Bool in
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }
    return name1 < name2
}
print(captainFirstTeam)




//Closure with Parameters
let helloName:(String) -> () = { name in
    print("Hello \(name)!")
    
}
helloName("Word")

//sorting with Closure
let names = ["Chris", " Alex", "Ewa", "Barry", "Daniella"]
let sortedNames = names.sorted{ $0 > $1}
print(sortedNames)

// Map with Closure
let numbers = [1,2,3,4,5]
let squareNumbers = numbers.map { $0 * $0}
print(squareNumbers)

// Filter with Closure
let scores = [85,92, 78,95,60]
let passingScores = scores.filter { $0 >= 80}
print(passingScores)


//Filtering out even numbers from array of integer
let i = [1,2,3,4,5,6,7,8,9,10]
let filteredNumbers = i.filter { i in
    return i % 3 == 0
}
print(filteredNumbers)


//Mapped Strings to UpperCase
let mappedNames = ["Alice", "Bob", "Charlie", "David"]
let uppercasedNames = mappedNames.map { mappedNames in
    
    return mappedNames.uppercased()
}
print(uppercasedNames)


let result10 = { (num1: Int, num2: Int) -> Int in
    return num1 + num2
}(5, 3) // Defining and calling the closure inline
