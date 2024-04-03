// Classes in Swift programming

import Foundation

/*
 
 1. What is a Class in Swift?
 A class in Swift is a blueprint or template for creating objects. It defines properties (attributes) and methods (functions) that characterize the objects created from it. Classes allow you to model real-world entities, encapsulate data, and provide behavior.

 2. Key Points about Classes in Swift:
 Here are some essential points to understand:

 Properties: Classes can have stored properties (variables) and computed properties (calculated values).
 Initialization: You create an instance of a class by initializing it using an initializer (constructor).
 Inheritance: Classes can inherit properties and methods from other classes.
 Reference Types: Objects created from classes are reference types (stored in memory and accessed via references).
 Access Control: You can control the visibility of class members using access modifiers (public, internal, private, etc.).
 */


// Fundamental of Classes: Define a class using keyword: "class" and Class "name".

class PersonCharles {
    var name: String
    var height: Int
    
    init(name: String, height: Int){// Initializer defined within the class body
        self.name = name
        self.height = height
    }
}

// Initialization: Create and instance of the class using the initializer
let charlesInfo = PersonCharles(name: "Charles Nebo", height: 192)

//Properties: Define properties within the class.


/*
 class PersonCharles {
     var name: String
     var height: Int
 
    // ...
 }
 */
 
// Defing Methods (functions within the class.
class Charles {
    var name: String
    
    init(name: String){
        self.name = name
        
}
    
    func sayHello() {
        print("Hello, i'm \(name)!")
    }
}
let charles = Charles(name: "Charles Nebo")
charles.sayHello() // "Hello, i'm Charles Nebo"




//Another Example
class Car {
    // Instance properties
    var brand: String
    var year: Int
    
    // Type property
    static var numberOfCars: Int = 0
    
    
    init(brand: String, year: Int){
        self.brand = brand
        self.year = year
        Car.numberOfCars += 1
    }
    
    // Instance method
    func startEngine() {
        print("\(brand) engine started")
    }
    static func printNumberOfCars() {
        print("Number of cars:  \(numberOfCars)")
    }
}

//Create an instance of a Car
let myCar = Car(brand: "Toyota", year: 1982)

// Call the startEngine() method
myCar.startEngine()

// Call the static method
Car.printNumberOfCars()

// Inheritance: Creating a subclass that inherits properties
//and methods fro a superclass

class Animal {
    var species: String
    
    init(species: String) {
        self.species = species
    }
    func makeSound() {
        print( "Meow!")
    }
}

class Dog: Animal {
    var breed: String
    
    init(breed: String) {
        self.breed = breed
        super.init(species: "Dog")
    }
    
    override func makeSound() {
        print("woof!")
    }
    
}
 // Create instance of the animal
let genericAnimal = Animal(species: "Cat")
print("Species of Animal: \(genericAnimal.species)")

// Creating instance of a Dog
let myDog = Dog(breed: "Labrador")
print("Species of the dog", myDog.species)
print("Breed of the Dog", myDog.breed)




// Understanding Class Inheritance
/*
 
 A class can also be created based on existing class by inheriting all the properties and methods of the original class, and can add its own on top. This is called class inheritance or subclassing, the class you inherit from call "base class or super" and the new class is subclass.
 
 
    See Animal class example above.
*/

// Base Class : Vehicle

// // Stage 1: Define the base class Vehicle
class Vehicle {
    var brand: String
    var year: Int
    static var numberOfVehicles: Int = 0
    
    
    // Stage 2: Initialize the base class with brand and year
    init(brand: String, year: Int){
        self.brand = brand
        self.year = year
        Vehicle.numberOfVehicles += 1
    }
    
    // Stage 3: Defines an instance method to start the vehicle
    func start(){
        print("\(brand) is starting ..")
    }
    
    
    // Stage 4: Defines an instance method to stop the vehicle
    func stop(){
        print("\(brand) is stoppint...")
    }
    
    
    // Stage 5: Define a class method to display total number of vehicles
    class func displayNumberOfVehicles() {
        print("Total number of Vehicles: \(numberOfVehicles)")
    }
}
    
// Subclass: Car


// Stage 6: Define a subclass Car inheriting from Vehicle
class Cars: Vehicle {
    var model: String
    
    
    // Stage 7: Initialize the subclass with brand, year, and model
    init(brand: String, year: Int, model: String) {
        self.model = model
        super.init(brand: brand, year: year)
    }
    
    // Stage 8: Override the start() method for Car subclass
    override func start() {
        super.start()
            print("\(brand)  \(model) is revving up...")
    }
    
    // Stage 9: Override the start() method for Car subclass
   override func stop() {
        super.stop()
        print("\(brand) \(model) is slowing down...")
    }

}

// Example Usages:

// Stage 10: Create instances of Vehicle and Car
let vehicle1 = Vehicle(brand: "Toyota", year: 2020)
let vehicle2 = Vehicle(brand: "Honda", year: 2019)
let car1 = Cars(brand: "Ford", year: 2018, model: "Mustang")
let car2 = Cars(brand: "Mazda 3", year: 2017, model: "Mazda 3 Grand Touring")

// Stage 11: Call methods
vehicle1.start()
vehicle2.stop()
car1.start()
car2.stop()
    
// Stage 12: Call class method
Vehicle.displayNumberOfVehicles()







//Final Classes - Does not allow other developers from building their own class based on my class or simply is this class cannot be subclassed.
final class Person {
    var name: String
    var age: Int
    
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    func introduce() {
        print("Hello, my name is \(name) and i am \(age) years old")
    }
}
//Usage
 let person = Person(name: "Mike", age: 40)
print(person.name)
person.introduce()


// Copying Objects
class Carpenter {
    var name = "Eugene Keita"
}
// Create the instance of this class and print the its name "Eugene Nebo"
var carpenter = Carpenter()
print(carpenter.name)

var carpenterCopy = carpenter
carpenterCopy.name = "Cyril Bob"
print(carpenter.name)


// Deintiliazer is activate when the instance of a class is destroyed
class Super {
    var staff = "John Doe"
    
    init(staff: String = "John Doe") {
        self.staff = staff
    }
    
    func printGreeting() {
        print("Hello, I'm \(staff)")
    }
    
    deinit {
        print("\(staff) is no more)")
    }

}

for _ in 1...3 {
    let supper = Super()
    supper.printGreeting()
    
}
    

// Managing a Shopping Cart

/*
 Suppose we’re building a simple shopping cart system using a struct called ShoppingCart. We want to add items to the cart and calculate the total price. We’ll use the mutating keyword to modify the cart’s properties
 */

struct ShoppingCart {
    private var items: [String]
    private var totalPrice: Double
    
    init(){
        items = []
        totalPrice = 0.0
    }
    mutating func addItem(_ itemName: String, price: Double) {
        items.append(itemName)
        totalPrice += price
        print("Added '\(itemName)' to the cart. Total price: $\(totalPrice)")
    }
    func display() {
        print("Items in the cart:")
        for item in items {
            print("- \(item)")
        }
    }
    
}

// Example usage:
var myCart = ShoppingCart()
myCart.addItem("iPhone Case", price: 29.99)
myCart.addItem("Wireless Earbuds", price: 79.99)
myCart.display()

/*
 Explanation:

 We’ve defined a ShoppingCart struct with private properties: items (an array of item names) and totalPrice.
 The addItem method is marked as mutating because it modifies the cart’s properties.
 We can add items to the cart and see the updated total price.
 Remember:

 You can only call mutating methods on variables (not constants) because they modify the instance.
 The mutating keyword ensures that the method can change the value of self.
 This example demonstrates how the mutating keyword allows us to modify properties within a value type. Feel free to experiment further and explore other scenarios!
 
 */




//Next:
// Understanding Private Access Control in Swift

/*
 
 
 



class Singer {
    var name = "Taylor Swift"
}
var singer = Singer()

var singerCopy = singer
singerCopy.name = "Justin Bieber"

print(singer.name)
print(singerCopy.name)

 */


