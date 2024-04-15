// Swift and Protocol Extensions

import Foundation

/*
 
 Protocol Extensions:
 Definition: Protocols describe what methods or properties something should have, but they don’t provide the actual code inside them.
 Purpose: Protocol extensions allow you to add default implementations and computed properties to protocols. When a type conforms to a protocol, it automatically gains the functionalities provided by the protocol extension.
 
 
 Swift Extensions:
 Definition: Extensions allow you to add methods to existing types like classes, structs, and enums. They enhance the functionality of specific data types.
 Purpose: Extensions are useful for adding new methods, computed properties, initializers, and more to existing types without modifying their original source code.
 
 */


// --------------- Protocol Extensions ------------------------

// Protocol for message display
protocol MessageDisplay {
    var message: String { get }
    var sender: String { get }
    var timestamp: Date { get }
    func displayMessage()
}

// Extension providing default implementation for displayMessage()
extension MessageDisplay {
    func displayMessage() {
        print("\(sender) said: \(message) and sent at: \(timestamp)")
    }
}

// Conform TextMessage to MessageDisplay
struct TextMessage: MessageDisplay {
    var message: String
    var sender: String
    var timestamp: Date
    // No need to implement displayMessage() here
}

// Conform ImageMessage to MessageDisplay
class ImageMessage: MessageDisplay {
    var message: String
    var sender: String
    var timestamp: Date
    var imageURL: URL

    init(message: String, sender: String, timestamp: Date, imageURL: URL) {
        self.message = message
        self.sender = sender
        self.timestamp = timestamp
        self.imageURL = imageURL
    }
    // No need to implement displayMessage() here
}

// Usage
let textMsg = TextMessage(message: "Hello!", sender: "Alice", timestamp: Date())
let imageMsg = ImageMessage(message: "Check out this photo!", sender: "Bob", timestamp: Date(), imageURL: URL(string: "https://example.com/image.jpg")!)

textMsg.displayMessage() // Automatically uses the default implementation
imageMsg.displayMessage() // Also uses the default implementation


// Protocol Vehicle
protocol Vehicle {
    var numberOfWheels: Int { get }
    func start()
    func stop()
}

struct Car: Vehicle {
    var numberOfWheels: Int = 4
}

extension Vehicle {
    func start() {
        print("Engine started")
    }
    
    func stop() {
        print("Vehicle stopped")
    }
}

let car = Car()
print("The number of wheels in the Car : \(car.numberOfWheels)")
car.start() // Output: Engine started
car.stop() // Output: Vehicle stopped


// Protocol Composition
protocol Brother{
    func playWhithBrother()
}

protocol Sister {
    func playWithSiter()
}

typealias Siblings = Brother & Sister

struct BrotherAndSister: Siblings {
    func playWhithBrother() {
        print("Playing with brother")
    }
    func playWithSiter() {
        print("Playing with sister")
    }
}
//Usage
let siblings: Siblings = BrotherAndSister()
siblings.playWhithBrother()
siblings.playWithSiter()


// AdvancedVehicleSystem: Example of Protocol Composition

protocol Vehicles {
    var numberOfWheels: Int { get }
    func start()
    func stop()
}

protocol Flying {
    func takeOff()
    func land()
}

protocol Swimming {
    func dive()
    func surface()
}

typealias AdvancedVehicle = Vehicles & Flying & Swimming

extension Vehicles{
    func start() {
        print("Vehicle starting...")
    }
    
    func stop() {
        print("Vehicle stopping...")
    }
}

extension Flying {
    func takeOff() {
        print("Flying: Taking off...")
    }
    
    func land() {
        print("Flying: Landing...")
    }
}

extension Swimming {
    func dive() {
        print("Swimming: Diving...")
    }
    
    func surface() {
        print("Swimming: Surfacing...")
    }
}

struct Seaplane: AdvancedVehicle {
    var numberOfWheels: Int { return 4 }
}

// Usage
let seaplane = Seaplane()

// Accessing properties
print("Number of wheels: \(seaplane.numberOfWheels)")

// Calling methods
seaplane.start()
seaplane.stop()
seaplane.takeOff()
seaplane.land()
seaplane.dive()
seaplane.surface()

