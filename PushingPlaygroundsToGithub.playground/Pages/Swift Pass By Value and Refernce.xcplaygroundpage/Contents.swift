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
struct Person{
    var name: String
    var age: Int
}
//Value Call: Creates the instance of a Person
var person = Person(name: "John Doe", age: 25)


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

