//Deep Dive into protocols and Protocol Oriented Programming

import Foundation
import UIKit



/*
 
 What is a Swift Protocol?
 In Swift, a protocol defines a blueprint of methods or properties that can be adopted by classes, structures, or enumerations. Think of it as a contract that specifies certain requirements. When a type (like a class) conforms to a protocol, it promises to provide actual implementations for those requirements.

 Here are the key points about protocols:

 Blueprints: Protocols define what methods or properties a type should have, without specifying their actual implementation.
 
 Adoption: Classes, structs, and enums can adopt (conform to) protocols.
 Requirements: A type that conforms to a protocol must provide implementations for all its requirements.
 
 Multiple Conformance: A type can conform to multiple protocols.
 Why Should Novice Programmers Care About Protocols?
 Protocols are essential for several reasons:

 Modularity: Protocols allow you to break down functionality into smaller pieces. You can define common behavior in protocols and then have different types adopt them.
 
 Code Reusability: By conforming to protocols, you can reuse code across different types. This promotes cleaner, more maintainable code.
 
 Flexibility: Protocols enable you to write more flexible and extensible code. You can create generic functions that work with any type conforming to a specific protocol.
 
 Protocol-Oriented Programming (POP): Swift encourages POP, where protocols play a central role. It’s a powerful paradigm that promotes better design.
 
 

 Here's what you need to know about these properties:

 1. Property Name and Type: The protocol specifies the name 
    and type of the required properties, but it doesn't specify
    whether they should be stored properties (holding a value)
    or computed
    properties (calculated on the fly). It only sets the expectations for what the property 
    should be able to do.

 2. Gettable and Settable:
 Certainly! Let's break down the key points about gettable and settable properties in a protocol:

 1. Gettable Properties:
    - A gettable property in a protocol requires conforming types to provide a way to retrieve the
      value of the property.
    - It is indicated by the `{ get }` keyword after the property declaration in the protocol.
    - Gettable properties are read-only, meaning that they can be accessed but cannot be modified.

 2. Settable Properties:
    - A settable property in a protocol requires conforming types to provide a way to both get and set the
      value of the property.
    - It is indicated by the `{ get set }` keyword after the property declaration in the protocol.
    - Settable properties are both readable and writable, allowing them to be modified after initialization.

 3. Use of let and var:
    - In Swift, the `let` keyword is used to define constant properties, whereas the `var` keyword is 
      used to define mutable properties.
    - When defining properties in a protocol, the choice between `let` and `var` depends on whether 
       the property should be mutable or immutable in conforming types.
    - If a property in a protocol needs to be mutable (both gettable and settable), it should be declared using the 
      `var` keyword.
    - If a property in a protocol only needs to be immutable (gettable only), it can be declared using the
     `let` keyword.

 4. Differences in Usage:
    - The main difference between using `let` and `var` in a protocol lies in the mutability of the property.
    - Properties declared with `let` are immutable and can only be set once during initialization. They cannot 
      be modified afterward.
    - Properties declared with `var` are mutable and can be modified after initialization.
    - When conforming to a protocol, if a property is declared as `let`, it must be set within the initializer of
      the conforming type and cannot be modified afterward. If declared as `var`, it can be set in the
      initializer and modified later.

 Opinion:
 - It's important for novice programmers to understand the distinction between gettable and settable
   properties in protocols, as it influences how properties are accessed and modified by conforming types.
 - The choice between using `let` and `var` depends on whether the property needs to be mutable or
   immutable, which impacts the behavior and flexibility of the conforming types.
 - Understanding these concepts helps in designing robust and flexible code architectures, enabling better
   encapsulation and control over data access and modification.


 3. Declaration in Protocol: Property requirements in a protocol are always declared as 
    variable properties using the `var` keyword.

     - For gettable properties only, use `{ get }` after the type declaration.
     
     - For properties that are both gettable and settable, use `{ get set }` after the 
       type declaration.
 
 Concrete Types
 - In Swift, a type is considered concrete if it can be instantiated directly, meaning you can create 
    instances of that type.
 
    Concrete types have methods and properties associated with them, and can be customized as needed.
    In contrast, a protocol itself is not a concrete type because it cannot be directly instantiated. However, types that
     conform to a protocol can be concrete types and are capable of instantiation.

 */


// Now, let's implement Protocol using Types that conform to Protocols: Struct, Enum, and Classes



// Example 1 -  A struct that conforms to a protocol

protocol PersonProtocol {
    var name: String { get }
    var age: Int  { get }
}


struct Person: PersonProtocol, CustomStringConvertible {
   var name: String
   var age: Int
    
    
// CustomStringConvertible implementation
    var description: String {
        return "Name:  \(name),  Age: \(age)"
    }
}
let person = Person(name: "Donald", age: 73)
print(person)




// Example 2 -  A struct that conforms to a protocol

//1. Car Protocol with Instance Properties:

protocol CarProtocol {
    var wheels: Int { get }
    var hasfourDoors: Bool { get }
    var color: String { get }
}

struct Sedan: CarProtocol {
    let wheels: Int
    let hasfourDoors: Bool
    let color: String
}

// Example Usage
let mySedan = Sedan(wheels: 4, hasfourDoors: true, color: "Blue")
print("My sedan has: \(mySedan.wheels) wheels, \(mySedan.hasfourDoors ? "four" : "two"), doors, and is \(mySedan.color)")



/*
 
 2. Car Protocol with Static Property:
 
 
 protocol Car {
     static var manufacturer: String { get }
 }

 // Example: A class conforming to Car
 class ElectricCar: Car {
     static var manufacturer = "Tesla"
 }

 print("Electric cars by \(ElectricCar.manufacturer) are eco-friendly.")

 */



//  Example 2 -  A Enum that conforms to a protocol

protocol CompassDirectionProtocol{
    static var allDirections: [Self] { get }
}
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

 
 

//Example 3 -  A Type Alias that conforms to a protocol

typealias Numbers = (Int, Int)

func < (lhs: Numbers, rhs: Numbers) -> Bool {
    return lhs.0 < rhs.0 && lhs.1 < rhs.1
}

let numbers1: Numbers = (3, 5)
let numbers2: Numbers = (2, 8)
let numbers3: Numbers = (3, 6)

print(numbers1 < numbers2) // Output: false
print(numbers1 < numbers3) // Output: true





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

// Implementing the Rectangle struct conforming to the Shape
//protocol
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



// Define a protocol
protocol Printable {
    func printInfo()
}

// Extend the protocol to provide a default implementation for 
//the printInfo method
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



// Protocol Oriented-Programming

// Protocol Definition
protocol Greet {
    var name: String { get } // Gettable property
    func message()
}

// Conforming Class
class Employee: Greet {
    var name = "Perry" // Implementation of gettable property
    
    func message() {
        print("Good Morning, \(name)!")
    }
}

// Usage
let employee1 = Employee()
employee1.message() // Output: "Good Morning, Perry!"




// Define the struct conforming to Hashable protocol
struct City: Hashable {
    let name: String  // Changed from var to let
    let population: Int  // Changed from var to let
}

// Create a set of cities
let citySet: Set<City> = [City(name: "Paris", population: 2_141_000)]

// Check if a city with the same name and population exists in the set
print(citySet.contains(City(name: "Paris", population: 2_141_000))) 





// Define the Taggable protocol
protocol Taggable {
    var name: String { get set }
}

// Modify the Tag struct to conform to the Taggable protocol
struct Tag: ExpressibleByStringLiteral, Taggable {
    var name: String
    
    init(stringLiteral value: String) {
        name = value
    }
}





// Protocol defining addition with an associated property
protocol Sum {
    var operand1: Int { get }
    var operand2: Int { get }
    func addition()
}

// Protocol defining multiplication with an associated property
protocol Multiplication {
    var factor1: Int { get }
    var factor2: Int { get }
    func multiply()
}

// Class conforming to both Sum and Multiplication protocols
class Calculators: Sum, Multiplication {
    var operand1: Int
    var operand2: Int
    var factor1: Int
    var factor2: Int
    
    init(operand1: Int, operand2: Int, factor1: Int, factor2: Int) {
        self.operand1 = operand1
        self.operand2 = operand2
        self.factor1 = factor1
        self.factor2 = factor2
    }
    
    func addition() {
        let result = operand1 + operand2
        print("Result of addition: \(result)")
    }
    
    func multiply() {
        let result = factor1 * factor2
        print("Result of multiplication: \(result)")
    }
}

// Usage
let calc = Calculators(operand1: 5, operand2: 3, factor1:4, factor2: 6)
calc.addition()
calc.multiply()




//protocol
protocol Drawable {
    func draw()
}

protocol Colorful {
    var color: String { get set }
}

struct ColoredRectangle: Drawable, Colorful {
    var color: String
    
    // Implement the draw() method
    func draw() {
        print("A rectangle with color: \(color)")
    }
}

// Example usage
let coloredRect = ColoredRectangle(color: "Blue")
coloredRect.draw() // Call the draw() method
