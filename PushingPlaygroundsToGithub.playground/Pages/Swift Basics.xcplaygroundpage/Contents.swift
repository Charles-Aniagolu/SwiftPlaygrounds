import Foundation

/**
 
Swift Variable, Constants, and Basic Data Types
 
 
Variable

Variable is a storage location identified by memory address and associated with a symbolic name(identifier). The name contains some known or unknown value. Variables are used in programming to store and manipulate data during the execution of a programme.
 
 A Swift variable is a named storage that can contain values of a certain type.
 
 "var" is the keyword to declar the variable.
 "name" is the variable identifier
 "colon" is used to specify the type of variable
 "=" is used to assign value to the variable
 Swift is a strongly typed language, meaning that each varible must have a specific type , and once a variable is assigned a type, its type cannot be changed 
 */



//Here are five example of Swift variables:

var age: Int = 25 // Integer variable

var name: String = "John" // String variable

var price: Double = 19.99 // Floating point variable

var isActive: Bool = true // Boolean Variable

var fruits: [String] = ["Apple", "Banana", "Orange"] // array

var str = "hello, world" // manipulating the variable
str += "!"  //OR
str = str + "!"


 /**
 Constants. the key concept is the same with variable above. However, the key distinction from variable is that once a value is assigned to a constant, it cannot be changed throughtout the execution of the program. Constants are used to represent values that remain unchanged during the course of the program. */
 
 //Constants uses "let" keyword

let nmberOFDaysInAweek: Int = 7 // Integer Constant

let appname: String = "MyApp" //String Constant

let piValue: Double = 3.14159 // Floating - Point Constant

let isSwiftAwesone: Bool = false // Boolean Constant

let primeNumbers: [Int] = [2, 3, 5, 7, 11]



/**

Differences between Swift Variables and Constants:

Mutability: Variables (var) can be changed after initial assignment.
Constants (let) cannot be changed after initial assignment.
Declaration:

Variables are declared using the var keyword.
Constants are declared using the let keyword.


Use Case: Use variables when the value might change during the execution of the program.
Use constants when the value should remain constant throughout the program.

Immutability Benefits: Constants provide safety by ensuring that once a value is set, it cannot be accidentally changed, reducing the risk of unintended modifications.
Readability: */


let numberOfMunicipalities: Int = 22

var population: Int
population = 529100

let townName: String = "Pirkkala"

var unemploymentRate: Double = 7.6


 //using String interpolation to calculate the actual number of unemployed people
 

let unemployedPeople = Double(population) * (unemploymentRate / 100.00)

let municipalDescription = "\(townName) has \(numberOfMunicipalities) municipalities, a population of \(population), and approximately \(unemployedPeople) unemployed people"

//Display the updated municipalDescription
print(municipalDescription)



/**

Basic Data Types
- Int = Integer
- Double = Floating-Point values
- Boolean = Boolean values
- String = text
 
 Collection Types - 3 Primary Types
 - Array
 - Dictionary
 - Set
 
 Advanced Data Types
 - Tuples (helps to create and pass around grouping of values from a function)
 - Optionals (handles absence of values.*****/

var welcomeMessage: String
welcomeMessage = "Hello, there!"

//multiple related types on a single line
var red, green, blue: Double
red = 101.00
green = 404.00
blue = 333.00
print(red, green, blue)


 

