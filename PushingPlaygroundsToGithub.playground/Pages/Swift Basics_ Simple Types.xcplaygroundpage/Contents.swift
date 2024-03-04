import Foundation

 
//Swift Variable, Constants,Basic Data Types, and Arrays
/**
 Variables hold initial values when they are declared. Also, the type of the initial value should match the declared data type. Examples below
 
 */
 

//Here are five example of Swift variables:
//Basic Syntax for variable definition in Swift are as follows:

//var variableName: DataType = initialValue


var age: Int = 25 // Integer variable

var name: String = "John" // String variable

var price: Double = 19.99 // Floating point variable

var isActive: Bool = true // Boolean Variable

var fruits: [String] = ["Apple", "Banana", "Orange"] // array

var str = "hello, world" // manipulating the variable
str += "!"  //OR
str = str + "!"


//Here a 5 examples of Swift Constants.
/**
 
  Constants are declared using the  "let" keyword. Constants are used to represent values that should not be changed once they are set. The basic syntax for defining Constants in Swift is as follows.  "let" constantName: DataType = initialValue
 */
 


// Integer Constant
let nmberOFDaysInAweek: Int = 7


//String Constant
let appname: String = "MyApp"


//Floating - Point Constant
let piValue: Double = 3.14159

// Boolean Constant
let isSwiftAwesone: Bool = false


//Array Constant
let primeNumbers: [Int] = [2, 3, 5, 7, 11]

//Using String interpolation to print Pirkkala county info.
let numberOfMunicipalities: Int = 22

var population: Int
population = 529100

let townName: String = "Pirkkala"

var unemploymentRate: Double = 7.6
 

//Determining the no. of unemployed people in Pirkkala
let unemployedPeople = Double(population) * (unemploymentRate / 100.00)

let municipalDescription = "\(townName) has \(numberOfMunicipalities) municipalities, a population of \(population), and approximately \(unemployedPeople) unemployed people"

//Display the updated municipalDescription
print(municipalDescription)



//String: Here five examples of declaring Swift String


//Declaring a String
let geeting : String = "Hello, Swift"


//String Concatenation
var firstName = "Charles"
let lastName = "Nebo"
let fullName = firstName + " " + lastName


//String Interpolation
let myAge: Int = 23
let message = "I am \(myAge) years old. "






//String length
let courseName = "Swift Programming"
let length = courseName.count

//Extracting SubString
let sentence = "Swift is powerful"
let substring = sentence.prefix(5)
 

//Multi-Line Strings

var myStr1 = """
This the first multiple lines
declaration in Swift code.
"""

var myStr2 = """
This goes \
over multiple\
lines

"""

//Doubles and Boolean
var pi = 3.141

var awesome = true 




//Arrays and Dictionaries

//Array annotation
//var myArray: [elementType] = [element1, element2, element3]ts:
var myFruits: [String] = ["Apple", "Banan", "Orange"]

//Array manipulation
let firstFruit = myFruits[0]    //accessing the first element
let secondFruit = myFruits[1]   // accessing the second element

//Modifying Elements
myFruits[2] = "Grapes"         //modify the 3rd element
myFruits.append("Kiwi")        //adding a new element at the end.


//Counting elements
let count = myFruits.count
print("Number of fruits: \(count)")

//Iterating through Elements
for fruit in myFruits {
    print(fruit)
}


//creating Arrays
let numbers = [1,2,3,4,5,6,7]

//Using array constructor to create new element
let anotherNumbers = Array(arrayLiteral: 1,2,3,4,5,6)

//Creating a an empty array
var emptyArray: [Int] = []
emptyArray = [1,3,5,5]


//Repeating a Value
let repeatedValues = Array(repeating: 0, count: 5)
// Creates an array with five elements, all initialized to 0


//Copying Array Approach: using + operator
let array1 = [1,2,3]
let array2 = [4,5,6]

let combinedArray = array1 + array2
print(combinedArray)

//Copying Array Approach: using += operator
var array3 = [3,4,5]
var array4 = [6,7,8]
array3 = array3 + array4
print(array3)

//Approach 3: Using ´append(contsOf:) Method
var array5 = [5,6,7]
var array6 = [8,9,10]

array5.append(contentsOf: array6)

//Approach 4: Creating new Array
let array7 = [5,6,7]
let array8 = [8,9,10]

let newArray = array7 + array8
print(newArray)

var myArray: [Int] = [1,2,3,4,5,6,7,8,9,10]

 

//Different ways to use a "for loop" to print values in Swift array.

// Method 1: Using traditional for loop with indices
for i in 0..<myArray.count {
    print(myArray[i])
}

// Method 2: Using enumerated() method to get both index and value
for (index, value) in myArray.enumerated() {
    print("Index: \(index), Value: \(value)")
}

// Method 3: Using for-in loop directly on array values
for value in myArray {
    print(value)
}

// Method 4: Using forEach function
myArray.forEach { value in
    print(value)
}

