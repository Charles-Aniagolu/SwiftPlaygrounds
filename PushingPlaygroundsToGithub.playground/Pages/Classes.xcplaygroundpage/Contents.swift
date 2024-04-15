
import Foundation



/*
 Swift Classes
 
A class in Swift is a blueprint or template for creating objects. It defines properties (attributes) and methods (functions) that characterize the objects created from it. Classes allow you to model real-world entities, encapsulate data, and provide behavior.
*/




// Example 1: Class definition.
class MyClassName{
    // properties, methods, etc.
}




// Example 2: Property Definition
class MyClassName1{
    var myProperty: Int = 0 // instance property
    static var myStaticProperty: String = "Static" // type property
}


// Methods:

// Example 3: Method Definition
class MyClassName2{
    
    func myMethod(){
        // method implementation
    }
    
    static func myStaticMethod(){
        // type method implementation
    }
}




// Example 4: Creating an instance of the Class.
class MyClassName3{
    var myProperty: Int
    
    init(property: Int){
        self.myProperty = property
    }
}

let myInstance = MyClassName3(property: 42)
print("My instance property value: \(myInstance.myProperty)")



// Inheritance:

// Example 5: Inheritance - allow subclass to inherite from the base //class

class ParentClassName{
    // superclass implementation
}

class SubClass: ParentClassName{
    // subclass implementation
}





// Example 6:

class MyClassName4{
    deinit{
        // deinitializer implementation
    }
}



// Example 7: Reference Types
var obj1 = MyClassName4()
var obj2 = obj1 // obj2 now refers to the same instance as obj1


// ------------------SMALL--PROGRAMM--IMPLEMENTATION------------



// Fundamental of Classes: Define a class using keyword: "class"
//and Class "name".

class PersonCharles{
    var name: String
    var height: Int
    
    init(name: String, height: Int){
        self.name = name
        self.height = height
    }
}

// Initialization: Create and instance of the class
let charlesInfo = PersonCharles(name: "Charles", height: 180)
print("Name: \(charlesInfo.name), Height: \(charlesInfo.height) cm")


 
// Programm show Instance method definition
class Charles{
    var name: String
    
    init(name: String){
        self.name = name
        
}
    
    func sayHello(){
        print("Hello, i'm \(name)!")
    }
}
let charles = Charles(name: "Charles Nebo")
charles.sayHello()




// Programm shows a combination of  instance and Class Methods
class Car{
    
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
    func startEngine(){
        print("\(brand) engine started")
    }
    static func printNumberOfCars(){
        print("Number of cars:  \(numberOfCars)")
    }
}

//Create an instance of a Car
let myCar = Car(brand: "Toyota", year: 1982)




//Understanding Class Inheritance
 
class Animal{
    var species: String
    
    init(species: String){
        self.species = species
    }
    func makeSound(){
        print( "Meow!")
    }
}

class Dog: Animal{
    var breed: String
    
    init(breed: String){
        self.breed = breed
        super.init(species: "Dog")
    }
    
    override func makeSound(){
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
class Vehicle{
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
    class func displayNumberOfVehicles(){
        print("Total number of Vehicles: \(numberOfVehicles)")
    }
}





// -------- MAPPING ---- PRIVATE --- ACCESS -- CONTROL IN --- SWIFT

 

 struct ShoppingCart{
     private var items: [String]
     private var totalPrice: Double
     
     init(){
         items = []
         totalPrice = 0.0
     }
     mutating func addItem(_ itemName: String, price: Double){
         items.append(itemName)
         totalPrice += price
         print("Added '\(itemName)' to the cart. Total price: $\(totalPrice)")
     }
     func display(){
         print("Items in the cart:")
         for item in items{
             print("- \(item)")
         }
     }
     
 }

 // Example usage:
 var myCart = ShoppingCart()
 myCart.addItem("iPhone Case", price: 29.99)
 myCart.addItem("Wireless Earbuds", price: 79.99)
 myCart.display()

 



 // Example 2: Defining a Library Management Program using private access modifiers

class Library{
    private var books: [String] = []
    
    func addBook(_ bookTitle: String){
        books.append(bookTitle)
        print("Added '\(bookTitle)' to the Library") // Removed empty parentheses here
    }
    
    func listBooks(){
        if books.isEmpty{
            print("The library is empty")
        } else{
            print("Books in the library")
            for book in books{
                print("- \(book)")
            }
        }
    }
}


 



 // Example Program that creates University Enrollment using Private access
class University{
    private var students: [String] = []
    
    func enrollStudents(_ studentName: String){
        students.append(studentName)
        print("Enrolled Student: \(studentName)")
    }
    
    func listStudents(){
        print("Enrolled students:")
        
        for student in students{
            print("- \(student)")
        }
    }
}

let myUniversity = University()
myUniversity.enrollStudents("Monica")
myUniversity.enrollStudents("Agnes")
myUniversity.listStudents()




class Student{
    private var name: String
    private var rollNumber: Int
    
    init(name: String, rollNumber: Int){
        self.name = name
        self.rollNumber = rollNumber
    }
    
    func displayDetails(age: Int, grade: String){
        print("Student:  \(name), Roll Number: \(rollNumber)")
        print("Age: \(age), Grade: \(grade)")
    }
}

var alex = Student(name: "Meghan", rollNumber: 404)
alex.displayDetails(age: 18, grade: "A")







 // --- What is Mutating -------- Functions In ----Structs and --- Enumerations.



// Example 1: Simple Counter
struct Counter{
    private var value = 0
    
    mutating func increment(){
        value = value + 1
    }
    
    func currentValue() -> Int{
        return value
    }
}

var myCounter = Counter()
myCounter.currentValue()
print("Current value:   \(myCounter.currentValue())")
 

// Example 2: Coordinates in a Point

struct Point{
    var x: Double
    var y: Double
    
    
    mutating func moveBy(x deltaX: Double, y deltaY: Double){
        x += deltaX
        y += deltaY
        
        
    }
    mutating func resetToOrigin(){
            x = 0
            y = 0
        }
    }

var myPoint = Point(x: 3.0, y: 5.0)
myPoint.moveBy(x: 2.0, y: -1.0)
print("New coordinates: \(myPoint.x),  \(myPoint.y)")



// Example 3: Bank Account

struct BankAccount{
    var balance: Double
    
    mutating func deposit(amount: Double){
        balance += amount
    }
    mutating func withdraw(amount: Double){
        guard amount <= balance else{
            print("Insufficient funds")
            return
        }
        balance -= amount
    }
}

// Define the BankAccount instance
var myAccount = BankAccount(balance: 100.0)

//Deposite some money
myAccount.deposit(amount: 50.0)

//Withdraw some money
myAccount.withdraw(amount: 30.0)

// Print the resultaing balance
print("Current balance: \(myAccount.balance)")




// Example 5: User Profile
struct UserProfile{
    var username: String
    var email: String
    
    mutating func updateEmail(newEmail: String){
        email = newEmail
    }
}


// Inventory Management
struct Inventory{
    var items: [ String: Int]
    
    mutating func addItem(name: String, quantity: Int){
        items[name, default: 0] += quantity
    }
    mutating func removeItem(name: String, quantity: Int){
        if let currentQuantity = items[name]{
            let newQuantity = max(0, currentQuantity - quantity)
            items[name] = newQuantity
        }
    }
}



// Task LIST
struct TaskList{
    var tasks: String
    
    mutating func addTask(task: String){
        tasks.append(task)
    }
    
    mutating func completedTask(index: Int){
        guard index >= 0 && index < tasks.count else{
            print("Invalid task index")
            return
        }
        
        let stringIndex = tasks.index(tasks.startIndex, offsetBy: index)
                tasks.remove(at: stringIndex)
    }
}




//----------- Mutating Function ------ Enumerations:


// Ligh Switch
enum LightSwitch{
    case on, off
    
    mutating func toggle(){
        if self == .on {
            self = .off
        }else{
            self = .on
        }
    }
}

    
// Direction
enum Direction{
    case north, south, east, west
    
    mutating func turnRight(){
        switch self {
        case .north: self = .east
        case .south: self = .west
        case .east: self = .south
        case .west: self = .north
            
        }
    }
}

    
 
// Media Playback
enum MediaState{
    case playing, paused, stopped

    mutating func playPause(){
        if self == .playing{
            self = .paused
        }else{
            self = .playing
        }
    }
    mutating func stop(){
            self = .stopped
    }
}



// Traffic Signal
    
    
enum TrafficSignal{
    case red, yellow, green

    mutating func nextSignal(){
        switch self{
        case .red: self = .red
        case .yellow: self = .yellow
        case .green: self = .green
        }
    }
}
// Create an instance of the enum
var signal = TrafficSignal.red

// Print the current value of the enum
print(signal) // Output: red

// Use the mutating function to change the value of the enum
signal.nextSignal()

// Print the new value of the enum
print(signal) // Output: green


    
// Document Status
    
enum DocumentStatus{
    case draft, pending, approved, rejected

    mutating func approve(){
        self = .approved
        }

    mutating func reject(){
        self = .rejected
        }
}






// ----Public Access Control ---- Classes

// Sport Runner Example
public class SportRunner{
    public var name: String
    public var age: Int
    public static var maxSpeed: Double = 20.0
    
    public init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    public func run(distance: Double){
        print("\(name) is running at max speed \(SportRunner.maxSpeed) meters.")
    }
 }
   // usage
let runner = SportRunner(name: "Usain Bolt", age: 40)
print(runner)
runner.run(distance: 1000.0)



// Push Car Example
public class PushCar{
    public var brand: String
    public var color: String
    public static var weight: Double = 150.0
    
    
    public init(brand: String, color: String) {
        self.brand = brand
        self.color = color
    }
    public func push(brand: String, color: String) {
        print("\(brand) car is being pushed. It weighs \(PushCar.weight) kg.")
    }
}
let pushCar = PushCar(brand: "Toyota", color: "DackGrey")
print(pushCar)
pushCar.push(brand: "ToyoTa Camry", color: "Dark Green")





// Popular Fruits Example

public class PopularFruits{
    public var name: String
    public var price: Int
    public static var availability: Bool = true
    
    public init(name: String, price: Int) {
        self.name = name
        self.price = price
    }
    public func displayInfo(name: String, price: Int) {
       let available = PopularFruits.availability ? "available" : "not available"
        print("\(name) is priced at \(price) and is \(available).")
        
    }
}
let popularFruits = PopularFruits(name: "Orange", price: 20)
print(popularFruits)
popularFruits.displayInfo(name: "Mango", price: 10)


// UniStudent Example

public class UniStudent{
    public var name: String
    public var major: String
    public static var graduationYear: Int = 2024
    
    public init(name: String, major: String) {
        self.name = name
        self.major = major
    }
    
    public func study(name: String, major: String) {
        print("\(name) is studying \(major) and will graduate in \(UniStudent.graduationYear)")
    }
    
}
// usage
let uniStudent = UniStudent(name: "Amaka", major: "Computer Science")
print(uniStudent)
uniStudent.study(name: "Juliet", major: "Accountancy")



// Example 1. Demonstrating Public Class Variables
class MathOperations{
    static let pi = 3.14
    static func square(_ number: Double) -> Double {
        return number * number
    }
}

// Example usage:
print("Pi value: \(MathOperations.pi)")
print("Square of 5: \(MathOperations.square(5))")

// Example 2: Demonstrating another Public Class Variable
class Geometry{
    static let e = 2.718
    
    static func cube(_ number: Double) -> Double{
        return number * number * number
        
        
    }
}
// Example usage:
print("Euler's number: \(Geometry.e)")
print("Cube of 3: \(Geometry.cube(3))")













