import Foundation

 
//Swift Variable, Constants, and Basic Data Types
 


//Here are five example of Swift variables:

var age: Int = 25 // Integer variable

var name: String = "John" // String variable

var price: Double = 19.99 // Floating point variable

var isActive: Bool = true // Boolean Variable

var fruits: [String] = ["Apple", "Banana", "Orange"] // array

var str = "hello, world" // manipulating the variable
str += "!"  //OR
str = str + "!"


//Here a 5 examples of Swift Constants

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
 

