//Deep Dive into protocols and Protocol Oriented Programming

import Foundation
import UIKit


/*
 A protocol in Swift is a blueprint of methods, properties, and 
 other requirements that a type must conform to. It defines a
 set of rules or expectations that a type needs to fulfill to
 be considered as conforming to that protocol.
 


 Here's what you need to know about these properties:

 1. Property Name and Type: The protocol specifies the name and type of the required properties, but it doesn't specify whether they should be stored properties (holding a value) or computed properties (calculated on the fly). It only sets the expectations for what the property should be able to do.

 2. Gettable and Settable: The protocol defines whether each property must be read-only (gettable) or both readable and writable (gettable and settable).

     - If a property must be gettable and settable, it cannot be satisfied by a constant stored property (which can't be changed) or a read-only computed property.
     
     - If the protocol only requires a property to be gettable, it's valid for the property to be settable as well, if needed for your code.

 3. Declaration in Protocol: Property requirements in a protocol are always declared as variable properties using the `var` keyword.

     - For gettable properties only, use `{ get }` after the type declaration.
     
     - For properties that are both gettable and settable, use `{ get set }` after the type declaration.

 To summarize, protocols allow you to define a blueprint for properties that types conforming to the protocol must implement. The protocol specifies the name, type, and access level of these properties, giving flexibility in how they are implemented by conforming types.
 
 - Swift Protocol use concrete data types that can adopt a protocol by conforming to its requirements. When a type conforms to protocol, it means that the type implements all the methods, properties, and other requirements defined by the protocol: Examples of Types: struct, enum, Classes.
 
 Concrete Types
 
 - In Swift, a type is considered concrete if it can be instantiated directly, meaning you can create instances of that type. Concrete types have methods and properties associated with them, and can be customized as needed.In contrast, a protocol itself is not a concrete type because it cannot be directly instantiated. However, types that conform to a protocol can be concrete types and are capable of instantiation.
 
 
    - Examples of concrete types in Swift include:
        - Structs: For example, struct Person { var name: String }
        - Classes: For example, class Car { var brand: String }
        - Enums: For example, enum CompassDirection { case north, south, east, west }
 
 see Examples Below:
        
*/




// Let define Animal Protocol:
protocol Animal {
//Property Name and Type
    var name: String { get }
    
// Gettable and Settable
    var age: Int { get set}
    
//Declaration in Protocol
    var color: String { get }

}
/*
 Here's a breakdown of what each property means:

 Property Name and Type:

 name: This property is a String type and represents the name of the animal. It's declared as a gettable property only, meaning it can be read but not modified after initialization.
 Gettable and Settable:

 age: This property is an Int type and represents the age of the animal. It's declared as both gettable and settable, allowing us to read and modify the age of the animal.
 Declaration in Protocol:

 color: This property is a String type and represents the color of the animal. It's declared as a gettable property only in the protocol, meaning it can be read but not modified after initialization.
 */

// Now, let's implement this protocol in a "Dog" struct:

struct Dog: Animal {
    let name: String
    var age: Int
    var color: String
}
/*
 In the implementation above:

 name is declared as a constant stored property because it's gettable only in the protocol.
 age is declared as a variable stored property because it's both gettable and settable in the protocol.
 color is declared as a constant stored property because it's gettable only in the protocol

*/


// Now, let's implement Protocol using Types that conform to Protocols: Struct, Enum, and Classes



// Structs - Example
struct Person: CustomStringConvertible {
   var name: String
   var age: Int
    
    
    var description: String { // here it's the description that implements the protocol
        
        return "Name:  \(name),  Age: \(age)"
    }
}
let person = Person(name: "Donald", age: 73)
print(person)
/*
 Explanation: The Person struct conforms to the CustomStringConvertible protocol by implementing the description property requirement. This allows instances of Person to provide a custom textual representation.
 */




/*
// Classes
class Vehicle: Equatable {
    var model: String
    var year: Int
    
    init(model: String, year: Int) {
        self.model = model
        self.year = year
    }
    static func == (lhs: Vehicle, rhs: Vehicle) -> Bool { // Here it's the equality operator that implements the protocol
        
        return lhs.model == rhs.model && lhs.year == rhs.year
    }
}
 */
 
 
 
/*
Explanation: The Vehicle class conforms to the Equatable protocol by implementing the == operator requirement. This allows instances of Vehicle to be compared for equality using the == operator.
 */


// Enum - Example.
enum CompassDirection: CaseIterable {
    case north
    case south
    case east
    case west
    
    
//CompassDirection conforms to Protocol by implementing allCases property required by CaseIterable
    
    static var allCases: [CompassDirection] {
        return [.north, .south, .east, .west]
    }
}
print("All compass directions:")
for direction in CompassDirection.allCases {
    print(direction)
}

/*
 The CompassDirection enum conforms to the CaseIterable protocol by adding conformance to it after its declaration.
 The allCases property is implemented as a static property of the CompassDirection enum, returning an array containing all the cases of the enum (north, south, east, and west).
 We then use a for loop to iterate over all the cases returned by the allCases property and print each direction.
 */

typealias Numbers = (Int, Int)

func < (lhs: Numbers, rhs: Numbers) -> Bool {
    return lhs.0 < rhs.0 && lhs.1 < rhs.1
}

let numbers1: Numbers = (3, 5)
let numbers2: Numbers = (2, 8)
let numbers3: Numbers = (3, 6)

print(numbers1 < numbers2) // Output: false
print(numbers1 < numbers3) // Output: true







//Example 1: Define a protocol for geometric shapes, where each shape has properties like area and perimeter.

// Defining the Shape protocol
protocol Shape {
    var area: Double { get }
    var perimeter: Double { get }
}

// Implementing the Circle struct conforming to the Shape protocol
struct Circle: Shape {
    let radius: Double
    
    var area: Double {
        return Double.pi * radius * radius
    }
    
    var perimeter: Double {
        return 2 * Double.pi * radius
    }
}

struct Square: Shape {
    let side: Double
    
    var area: Double {
        return side * side
    }
    var perimeter: Double {
        return 4 * side
    }
}


/*
// Implementing the Rectangle struct conforming to the Shape protocol
struct Rectangle: Shape {
    let width: Double
    let height: Double
    
    var area: Double {
        return width * height
    }
    
    var perimeter: Double {
        return 2 * (width + height)
    }
}

// Creating instances of Circle and Rectangle
let circle = Circle(radius: 5.0)
let rectangle = Rectangle(width: 4.0, height: 6.0)

// Printing properties of Circle
print("Circle:")
print("Radius: \(circle.radius)")
print("Area: \(circle.area)")
print("Perimeter: \(circle.perimeter)")

// Printing properties of Rectangle
print("\nRectangle:")
print("Width: \(rectangle.width), Height: \(rectangle.height)")
print("Area: \(rectangle.area)")
print("Perimeter: \(rectangle.perimeter)")
*/





/*
// Defining Protocols represnting basic bhaviours
protocol Animal {
    var name: String { get }
    func makeSound()
    
}

struct Dog: Animal {
    let name: String
    
    func makeSound() {
        print("Woof!")
    }
}

struct Cat: Animal {
    let name: String
    
    func makeSound() {
        print("Meow!")
    }
}

let dog = Dog(name: "Nappi")
let cat = Cat(name: "Merkku")

print(dog.name)
print(cat.name)
 
*/

//Protocol Inheritance:

// Define the base protocol
protocol Vehicle {
    var numberOfWheels: Int { get }
    
}

// Define a protocol inheritance from Vehicle

protocol Car: Vehicle {
    var brand: String { get }
}

// Define another protocol inheriting from Vehicle

protocol Bike {
    var hasBasket: Bool { get}
        
    }

protocol Motorcycle: Bike {
    var hasSideCar: Bool { get }
}

// Implement a struck conforming to Motorcycle
struct HondaCBR: Motorcycle {
    var numberOfWheels: Int = 2
    var hasBasket: Bool = false
    var hasSideCar: Bool = false
    var brand: String = "Honda"
}
// Call and print the properties
let hondaCBR = HondaCBR()
print("Brand: \(hondaCBR.brand)")
print("Number of Wheels: \(hondaCBR.numberOfWheels)")
print("Has Basket: \(hondaCBR.hasBasket)")
print("Has Sidecar: \(hondaCBR.hasSideCar)")



/*

// Define a protocol
protocol Drawable {
    func draw()
}

// Extend the protocol to provide a default implementation for the draw method
extension Drawable {
    func draw() {
        print("Drawing...")
    }
}

// Conform a struct to the protocol
struct Square: Drawable {
    func draw() {
        print("Drawing a square")
    }
}

// Call and print the method
let square = Square()
square.draw() // Output: Drawing a square
*/

// Define a protocol
protocol Printable {
    func printInfo()
}

// Extend the protocol to provide a default implementation for the printInfo method
extension Printable {
    func printInfo() {
        print("Default implementation of printInfo")
    }
}

// Conform a struct to the protocol
struct Book: Printable {
    func printInfo() {
        print("Printing book information...")
    }
}

// Call and print the method
let myBook = Book()
myBook.printInfo() // Output: Printing book information...


// Protocol Oriented-Programming

/*
// Define a protocol
protocol Vehicle {
    var speed: Double { get set }
    func move()
}

// Extend the protocol to provide a default implementation for the move method
extension Vehicle {
    func move() {
        print("Moving at speed \(speed)")
    }
}

// Conform struct Car to the protocol
struct Car: Vehicle {
    var speed: Double
}

// Conform struct Bike to the protocol
struct Bike: Vehicle {
    var speed: Double
}

// Create instances and call the method
let car = Car(speed: 60)
let bike = Bike(speed: 30)

car.move() // Output: Moving at speed 60.0
bike.move() // Output: Moving at speed 30.0
*/



//Protocol-Oriented Programming (POP):

// Define a protocol for a basic calculator
protocol Calculator {
    func add(_ num1: Int, _ num2: Int) -> Int
    func subtract(_ num1: Int, _ num2: Int) -> Int
}

// Extend the protocol to provide a default implementation for the subtract method
extension Calculator {
    func subtract(_ num1: Int, _ num2: Int) -> Int {
        return num1 - num2
    }
}

// Conform a struct to the protocol
struct BasicCalculator: Calculator {
    func add(_ num1: Int, _ num2: Int) -> Int {
        return num1 + num2
    }
}

// Create an instance of the calculator and perform operations
let calculator = BasicCalculator()
let sum = calculator.add(5, 3)
let difference = calculator.subtract(10, 4)

print("Sum: \(sum)") // Output: Sum: 8
print("Difference: \(difference)") // Output: Difference: 6
