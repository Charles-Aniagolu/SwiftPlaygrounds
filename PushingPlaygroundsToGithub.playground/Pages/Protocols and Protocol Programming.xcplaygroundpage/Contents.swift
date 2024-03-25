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
 - Types can adopt protocols by conforming to them using the : syntax.
   Example:Protocol Drawable
     Here, Drawable protocol defines a method draw() and a property fillColor
 without specifying their implementation
*/



// Defining and implementing protocols

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
