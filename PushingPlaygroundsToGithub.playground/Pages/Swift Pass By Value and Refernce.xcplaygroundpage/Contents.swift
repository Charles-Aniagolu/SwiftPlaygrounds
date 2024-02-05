import Foundation

/**
 
 In Swift programming, there are functions that pass by value and functions that pass by reference.
 - In Swift, structs, enums, and primitive types are passed by value, while classes and functions are passed by
   reference.
 
 - When a function is passed by value, the data inside the function is copied, and any changes made to the data inside
   the function are only visible within the function’s scope.
 
 - On the other hand, when a function is passed by reference, the reference to the data is passed, and any changes
   made to the data inside the function are visible outside the function’s scope.
 */

//Passed by Value:
// Example 1: Structs - Values types that encapsulate data
struct Point{
    var x: Double
    var y: Double
}
//Value Call: var point = Point(x: 2.0, y: 3.0)
var point = Point(x: 2.0, y: 3.0)
var newPoint = point //Passed by value, a copy is made
newPoint.x = 5.0
print(point.x) // output: 2.0 (original value remains unchanged)

// Example 2:
struct iPerson{
    var name: String
    var age: Int
}
//Value Call: Creates the instance of a Person
var person = iPerson(name: "John Doe", age: 25)
var myperson = person
print(myperson.name)
print(myperson.age)



//Example 3:
struct Size {
    var weight: Double
    var height: Double
}
//Value Call: Creates the instance of a Size.
var size = Size(weight: 102.0, height: 192.0)


//Example 4:
struct Color {
    var red: Double
    var green: Double
    var blue: Double
}
//Value Call: Created the instance of a Color
var color = Color(red: 555.0, green: 7789.0, blue: 1999.0)


//Example 5:
struct Book {
    var title: String
    var author: String
}
//Value Call: Created the instances of a Book.
var book = Book(title: "Swift programming - the Big Nerd Ranch Guide", author: "Matthew Mathias and John Gallagher")



//Enums: - Values types that represent group of related values

//Example 1: enum Direction
enum Direction {
    case north, south, east, west
}
//Values Call: Created the instances of Direction
var currentDirection = Direction.north
var newDirection = currentDirection
newDirection = .east
print(currentDirection) //Output: north (original value reamins unchanged)


//Example 2: enum Coin
enum Coin {
    case penny, nickel, dime, quarter
}
//Value Call: Creates an instance of Coin.
let myCoin: Coin = .dime // This is valid for a variable, not a constant.
let anotherCoin: Coin = .penny //NB; Once assigned, these values cannot be changed.
 

// Example 3: enum Day
enum Day {
    case monday, tuesday, wednesday, thursday, friday, saturday, sunday
}
//Value Call: Creates instances of Day
let toDay: Day = .friday
let anothertoDay: Day = .monday

/**
//Example 4: enum Planet
enum Planet {
    case mercury, venus, earth, mars, jupiter, saturn, uranus, neptune
}
//Value Call: Creates instance of Planet
let thePlanet: Planet = .venus

//Print the values of thePlanet
switch thePlanet {
case .mercury:
    print("Mercury")
    
case .venus:
    print("Venus")
    
case .earth:
    print("Earth")
    
case .mars:
    print("Mars")
    
case .jupiter:
    print("Jupiter")
    
case .saturn:
    print("Saturn")
    
case .uranus:
    print("Uranus")
    
case .neptune:
    print("Neptune")
}
 */


//OR

// Iterate over all neum cases using a for loop
  //NB; The allCases property is automatically synthesized for enums that conform to the CaseIterable.


enum Planet: CaseIterable {
    case mercury, venus, earth, mars, jupiter, saturn, uranus, neptune
}

// Iterate over all enum cases using a for loop
for planet in Planet.allCases {
    print(planet)
}


//Examples of Primitive Types:

let originalNumber: Int = 42
var newNumber = originalNumber //A copy of the value is made here.
newNumber = 100        // Modifying the copy does not affect the original
print(originalNumber)              // Output : 42 ( original value remains unchanged


//Example 2
let distance: Double = 10.5
var currentDistance = distance
currentDistance = 400.66
print(distance)
print(currentDistance)

//Example 3
let character: Character = "A"
var anotherCharacter = character
anotherCharacter = "B"
print(character)
print(anotherCharacter)


//Example 4
let flag: Bool = true
var anotherFlag = flag
anotherFlag = false
print(flag)
print(anotherFlag)

//Example 5
let text: String = "Hello, Swift"
var anotherString = text
anotherString = "Hello, Objective-c"
print(text)
print(anotherString)

/**
 Passed By Reference - Reference types those that define objects with properties and methods.
 In Swift, classes are reference types. When you work with a reference type, the data is passed by reference. This means that, instead of creating a copy of the original object, the reference to the object is passed around. Any modifications made to the object through one reference will affect all other references to the same object
 */

//Example 1 - Classes
class Person {
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
}

//Creating an instance of the class
let personA = Person(name: "John", age: 20)
var personB = personA                    // Reference to the same object
personB.name = "Jane"    //Modifying through one refernce affects the original object
print(personB.name)
print(personB.age)      //Output: Jane (original object is modified)

/**
 
 However, it's important to note that when you pass an object to a function, the reference itself is passed by value. That is, the function receives a copy of the reference to the same object. If the function modifies the object, those changes will be visible outside the function because the reference is shared.
 
 
 Statement 1:

 "This demonstrates the concept of passing by reference for class instances in Swift, where changes made inside the function are reflected outside the function since classes are reference types."
 Statement 2:

 "However, it's important to note that when you pass an object to a function, the reference itself is passed by value. That is, the function receives a copy of the reference to the same object. If the function modifies the object, those changes will be visible outside the function because the reference is shared."

 */

//Example 2
func modifiedPerson(_ person: Person){
    person.name = "Jacob"
    person.age = 50
    
}
let person3 = Person(name: "Alice", age: 40)
modifiedPerson(person3)
print(person3.name)
print(person3.age)


//Example 3

class Car {
    var brand: String
    var model: String
    
    init(brand: String, model: String) {
        self.brand = brand
        self.model = model
    }
}
let car1 = Car(brand: "Mazda 3", model: "2018")
var car2 = car1
car2.brand = "CX 5"
car2.model = "2022"
print(car2.brand)
print(car2.model)

//Example 4
class Animal {
    var species: String
    init(species: String) {
        self.species = species
    }
}

let mySpecies = Animal(species: "Tiger")
var otherSpecies = mySpecies
otherSpecies.species = "Chimpanzee"
print(otherSpecies.species)

//Example 5
class iBook {
    var title: String
    var author: String
    
    init(title: String, author: String) {
        self.title = title
        self.author = author
    }
}

let myBook = iBook(title: "One week one trouble", author: "Anezi, Okoro")
var anotherBook = myBook
anotherBook.title = "Not without my daughter"
print(anotherBook.title)


//Example 6
class Team {
    var name: String
    var size: Int
    
    init(name: String, size: Int) {
        self.name = name
        self.size = size
    }
}

let iTeam = Team(name: "ITproject Management team", size: 7)
var specialTeam = iTeam
specialTeam.name = "RE Team"
specialTeam.size = 5

print(specialTeam.name)
print(specialTeam.size)


//Functions: - Reference types that represent block of code.

//Examples 1.
func add(_ a: Int, _ b: Int) -> Int {
    return a + b
}
var sumResult = add(3, 4)
print(sumResult)


//Example 2
func greet(name: String) -> String {
    return "hello, \(name)"
}
var greeting = greet(name: "Charlie")
print(greeting)


//Example 3
func square(_ x: Double) -> Double {
    return x * x
}

let mySquare = square(4.0)
let mySquare2 = square(5.0)
print(mySquare)
print(mySquare2)

//Example 4
func concatenate(_ str1: String, _ str2: String) -> String {
    return str1 + "," + str2
}
let myConcatenate = concatenate("hello", "Charles")
let myConcatenate2 = concatenate("hello", "Susana")
print(myConcatenate)
print(myConcatenate2)


//Example 5

func isEven(_ number: Int) -> Bool {
    return number % 2 == 0
}
let myisEven = isEven(4)
let myisEven2 = isEven(7)

print(myisEven)
print(myisEven2)

//stopped here.
//Other Instances with Examples

// Tuple - Passed by Value

struct PersonInfo {
  var name: String
  var age: Int
}

var personInfo = PersonInfo(name: "Alice", age: 35)
var newPersonInfo = personInfo
newPersonInfo.name = ("Bob")
print(personInfo.name)




//tuple
func processTuple(input: (Int, String)) -> (Int,String) {
    //Function logic here
    return (input.0, "Processed: " + input.1)
    
}
 let output = processTuple(input: (14, "Kolanuts"))
  print(output)


/**
 Differences in Return and Print Statements.
 return Statement:
 Purpose: Used to send a value back from a function.
 Functionality: Indicates the end of the function's execution and returns the specified value to the caller.
 Usage: Typically used to produce a result or output that can be captured and used by the calling code.
 
 print Statement:
 Purpose: Used to output information to the console for debugging or informational purposes.
 Functionality: Prints the specified values or expressions to the console during the program's execution.
 Usage: Primarily used for debugging or displaying information but doesn't provide a value back to the caller.
 
 */

//Examples:
func addSum(_ a: Int, _ b: Int) -> Int{
    return a + b
}
let result = add(3, 5)
print(result)

//Example
func calculateRectangleArea(length: Double, width: Double) -> Double{
    return length * width
}
let areaOfRectangle = calculateRectangleArea(length: 5.0, width: 6.0)

//Displaying the result
print("Area of triangle: \(areaOfRectangle)")


//Printing a Welcome message.
func printWelcomeMessage() {
    print("Welcome to Swift Programming!")
}
printWelcomeMessage()


//Displaying the contents of an Array.
func printArrayContents(_ array: [String]) {
    for element in array {
        print(element)
    }
}

let myArray = ["Apple", "Banana", "Orange"]
printArrayContents(myArray)

// Function definition: Returns a concatenated string of array elements.
func concatenatedArrayContents(_ array: [String]) -> String {
    var result = " "
    for element in array {
        result += element + " "                   //result + element + " "
    }
    
    return result
}
 //Function Call
let mArray = ["Mango", "Okra", "Lime"]
let concatenatedString = concatenatedArrayContents(mArray)

//Print the returned  value
print(concatenatedString)


//Example: Logging information about a user
func logUserInfo(name: String, age: Int) {
    print("User Info: Name - \(name), Age - \(age)")
}

/**
 
 Differences in Void functions and Return Types
Void Funtion (No Return Types):
 void function (no return type) performs some action but doesn't return a value explicitly.
A function with a return type explicitly specifies the type of value it will return and uses the return keyword to send that value back to the caller
 
 */

// Void function (no return type)
func greeti(name: String) {
    print("Hello, \(name)!")
}

// Calling the void function
greeti(name: "John")



// Function with return type (Int)
func addNumbers(a: Int, b: Int) -> Int {
    return a + b
}

// Calling the function with return type
let sum = addNumbers(a: 5, b: 3)
print("Sum: \(sum)")

