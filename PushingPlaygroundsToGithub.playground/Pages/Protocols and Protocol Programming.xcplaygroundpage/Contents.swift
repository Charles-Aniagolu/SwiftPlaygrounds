//Deep Dive into protocols and Protocol Oriented Programming

import Foundation
import UIKit


/*
 A protocol in Swift is a blueprint of methods, properties, and 
 other requirements that a type must conform to. It defines a
 set of rules or expectations that a type needs to fulfill to
 be considered as conforming to that protocol.
 Using Protocols for Abstraction, Encapsulation, and Polymorphism:

 Abstraction: Protocols allow you to define a contract without
 specifying the implementation details. This helps in abstracting
 away the specific implementation and focusing on what needs to be done.
 
 Encapsulation: Protocols encapsulate functionality by defining a set of
 requirements that types must adhere to. This promotes modular and reusable code.
 
 Polymorphism: Protocols enable polymorphism, allowing different types to be
 treated uniformly if they conform to the same protocol. This fosters flexibility
 and extensibility in your codebase.
 
 
 Defining and Adopting Protocols:
 - To define a protocol, use the protocol keyword followed by
   the protocol's name and its requirements.
 - Types can adopt protocols by conforming to them using them
 - Swift Protocol asr concrete data types that can adopt a protocol by conforming to its requirements. When a type conforms to protocol, it means that the type implements all the methods, properties, and other requirements defined by the protocol: Examples of Types: struct, enum, Classes, Tuples
 
 Concrete Types
 
 - In Swift, a type is considered concrete if it can be instantiated directly, meaning you can create instances of that type. Concrete types have methods and properties associated with them, and can be customized as needed.In contrast, a protocol itself is not a concrete type because it cannot be directly instantiated. However, types that conform to a protocol can be concrete types and are capable of instantiation.
 - Concrete types can include classes, structs, enums, tuples, and even some built-in types provided by Swift.
 
 
    - Examples of concrete types in Swift include:
        - Structs: For example, struct Person { var name: String }
        - Classes: For example, class Car { var brand: String }
        - Enums: For example, enum CompassDirection { case north, south, east, west }
        
 
 
 : syntax.
   Example:Protocol Drawable
     Here, Drawable protocol defines a method draw() and a property fillColor
 without specifying their implementation
*/

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
