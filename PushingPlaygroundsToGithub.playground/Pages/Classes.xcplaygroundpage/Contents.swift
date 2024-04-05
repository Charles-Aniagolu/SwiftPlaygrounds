import Foundation



// Swift Classes


// Definition of Classes in Swift?

/*
A class in Swift is a blueprint or template for creating objects. It defines properties (attributes) and methods (functions) that characterize the objects created from it. Classes allow you to model real-world entities, encapsulate data, and provide behavior.
*/



// Characteristics of a Swift Classes.

/*
Classes in Swift are defined using:
- the class keyword followed by the class name.
- They can contain properties, methods, initializers, deinitializers,
  and can also inherit characteristics from other classes.
 
 */



// Let's -- discuss the --  characteristics -- mentioned here.

// Example 1: Class definition.

class MyClassName {
    // properties, methods, etc.
}



// Properties:
/*
  Properties: Properties are variables or constants associated with a class. They can be either instance properties (belonging to instances of the class) or type properties (associated with the class itself).
*/

// Example 2: Property Definition

class MyClassName1 {
    var myProperty: Int = 0 // instance property
    static var myStaticProperty: String = "Static" // type property
}



// Methods:
/*
   Methods: Methods are functions associated with a class. Like properties, methods can be instance methods or type methods.
*/

// Example 3: Method Definition

class MyClassName2 {

    func myMethod() { // instance method
        // method implementation
    }
    
    static func myStaticMethod() { // static method
        // type method implementation
    }
}




// Initialization:
/*
   Initialization: Classes in Swift can have initializers, which are special methods used to create instances of the class. Initializers are invoked when a new instance of the class is created.

*/

// Example 4: initialization- Creating the instance of the Class.

class MyClassName3 {

    var myProperty: Int
    
    init(property: Int) {
        self.myProperty = property
    }
}



// Inheritance:

/*
Inheritance: Swift supports class inheritance, allowing one class to inherit characteristics from another. The subclass can then customize or extend the behavior of the superclass.
*/

// Example 5: Inheritance - allow subclass to inherite from the base //class

class ParentClassName {
    // superclass implementation
}

class subClass: ParentClassName {
    // subclass implementation
}



// DeInitialization:

/*
 Deinitialization: Classes can also have deinitializers, which are special methods called when an instance of the class is deallocated from memory.
 */

// Example 6:

class MyClassName4 {
    deinit {
        // deinitializer implementation
    }
}



/*
 Reference Types: Classes are reference types in Swift, meaning when you assign a class instance to a variable or pass it as an argument to a function, you're actually passing a reference to the same instance in memory.
 */

// Example 7: Reference Types
var obj1 = MyClassName4()
var obj2 = obj1 // obj2 now refers to the same instance as obj1





/*
 Access Control: You can control the visibility of class members
 using access modifiers (public, internal, private, etc.).
 
 NB; Understanding these fundamental concepts of Swift classes is crucial for building robust and maintainable object-oriented code in Swift.
 */




// ------------------SMALL--PROGRAMM--IMPLEMENTATION------------




// Fundamental of Classes: Define a class using keyword: "class"
//and Class "name".

class PersonCharles {
    var name: String
    var height: Int
    
    init(name: String, height: Int){
        self.name = name
        self.height = height
    }
}

// Initialization: Create and instance of the class
let charlesInfo = PersonCharles(name: "Charles Nebo", height: 192)


 
// Programm show Instance method definition
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
charles.sayHello()




// Programm shows a combination of  instance and Class Methods
class Car {
    
    // Instance properties
    var brand: String
    var year: Int
    
    // Type property or class variable
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










/*
Understanding Class Inheritance
 
 A class can also be created based on existing class by inheriting
 all the properties and methods of the original class, and can add
 its own on top. This is called class inheritance or subclassing,
 the class you inherit from call "base class or super" and the new
 class is subclass.

See Animal class example above.
*/


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





// Vehicle Class Definition

// Stage 1: Define the base class Vehicle
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
    
    
    // Stage 5: Define a class method to display total number of
    // vehicles
    class func displayNumberOfVehicles() {
        print("Total number of Vehicles: \(numberOfVehicles)")
    }
}





// -------- MAPPING ---- PRIVATE --- ACCESS -- CONTROL IN --- SWIFT

 /*
  
  Managing a Shopping Cart
  
  Suppose we’re building a simple shopping cart system using a
 struct called ShoppingCart. We want to add items to the cart and
 calculate the total price. We’ll use the mutating keyword to modify
  the cart’s properties
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

  We’ve defined a ShoppingCart struct with private properties: items
  (an array of item names) and totalPrice.
  The addItem method is marked as mutating because it modifies the
  cart’s properties.
  We can add items to the cart and see the updated total price.
  Remember:

  You can only call mutating methods on variables (not constants)
  because they modify the instance.
  The mutating keyword ensures that the method can change the value
  of self.
  This example demonstrates how the mutating keyword allows us to
  modify properties within a value type. Feel free to experiment
  further and explore other scenarios!
  
  */



 // Example 2: Defining a Library Management Program using private access modifiers

 class Library {
     private var books: [String] = []
         
     func addBook(_ bookTitle: String) {
         books.append(bookTitle)
         print("Added '\(bookTitle)' to the Library")
     }
     
     func listBooks() {
         if books.isEmpty {
             print("The library is empty")
         } else {
             print("Books in the library")
             for book in books {
                 print("- \(book)")
             }
         }
     }
 }

 let myLibrary = Library()
 print(myLibrary.addBook("Swift Programming"))
 print(myLibrary.addBook("Design Patterns"))
 myLibrary.listBooks()



 // Example Program that creates University Enrollment using Private access
 class University {
     private var students: [String] = []
     
     func enrollStudents(_ studentName: String) {
         students.append(studentName)
         print("Enrolled Student: \(studentName)")
     }
     
     func listStudents() {
         print("Enrolled student")
         for student in students {
             print("- \(student)")
         }
     }
 }
 // Example Usage
 let myUniversity = University()
 myUniversity.enrollStudents("Monica")
 myUniversity.enrollStudents("Agnes")
 myUniversity.listStudents()
 
 
 
 
 



 //Next:
 
 
