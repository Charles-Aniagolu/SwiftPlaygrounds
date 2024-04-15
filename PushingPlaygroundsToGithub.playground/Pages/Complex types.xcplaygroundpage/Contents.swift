import Foundation



/*
 Enumeration, Array, Set, Dictionary

 Complex Types: Enumeration, Sets, Tuples, Dictionaries
 
 
 Arrays, sets, tuples, and dictionaries let you store a group of items under a single value. They each do this in different ways, so which you use depends on the behavior you want.
 Arrays store items in the order you add them, and you access them using numerical positions.
 Sets store items without any order, so you can’t access them using numerical positions.
 Tuples are fixed in size, and you can attach names to each of their items. You can read items using numerical positions or using your names.
 Dictionaries store items according to a key, and you can read items using those keys.
 Enums are a way of grouping related values so you can use them without spelling mistakes.
 You can attach raw values to enums so they can be created from integers or strings, or you can add associated values to store additional information about each case.

 */

var iColors: [String] = ["Yellow", "Purple", "Orange", "Green"]

//Access and print elements
print(iColors[0])
print(iColors[2])

//Adding and element
iColors.append("Red")
print(iColors)

//Remove an Element
iColors.remove(at: 1)
print(iColors)

// Iterate through the array
for colors in iColors {
    print(colors)
}


//Syntax Structure of Swift Arrays: - Creating Array of integers
var number: [Int] = [1,2,3,4,5,6,7,8,9,10]
let firstNumber = number  [0]
let secondNumber = number [1]
let thirdNumber = number  [2]

print(firstNumber)
print(secondNumber)
print(thirdNumber)



//Creating an array of Strings
var fruits: [String] = ["Apple", "Orange", "Banana", "Guva"]
let totalFruits = fruits.count
print(totalFruits)




//Arrays : Collection of Values that a stored as a single value
let colors = ["White", "Red", "Orange", "Green", "Brown", "Grey", "Blue"]



//Different Ways of Reading Arrays in Swift

// a. Reading Values from array
let firstColor = colors[0]      //Accessing the first element
let secondColor = colors [1]    //Accessing the second element

// b. Using count property
let myColors = colors.count
print(myColors)

// c. Enumerating through the array:
for (index, fruit) in fruits.enumerated() {
    print("Index \(index), \(fruit)")
}




//Different Ways to Access and Loop Swift Arrays:

// a. Using traditional for loop
for i in 0..<colors.count {
    print(colors[i])
}

// Using forEach Method
number.forEach { numbers in
 print(number)
}

//Modifying Arrays

// a. Appending elements in Array
fruits.append("Lime")
fruits.append("Grapes")
print(fruits)

// b. Inserting at a specific Index
fruits.insert("Mango", at: 6)
print(fruits)
fruits.insert("Pinaples", at: 1)
print(fruits)
print(fruits [7])


// c. Removing Elements:
fruits.remove(at: 3)
print(fruits)

// d. Array Concatenation
let moreFruits = ["Ginger", "Tomato"]
let allFruits = [fruits + moreFruits]
print(allFruits)

// e. Checking if Array isEmpty- using isEmpty property
if colors.isEmpty {
    print("No colors")
}else{
    print("Colors available")
}


/*
 f. Arrays with Different Types
 Arrays in Swift are strongly typed, but you can create an array with elements of different types using the "Any" type or "AnyObject for class instances:
 */

var mixedArray: [Any] = [1, "Swift", 3.14, true]
print(mixedArray)


// g. Array Slicing: - You can create sub Array by using a range of indices

let someFruits = fruits[0...3]
print("someFruits are: \(someFruits)")



/*
 h. Higher-Order Functions:
 Swift provides powrful higher-order funtions for array manipulation, such as  'map' , 'filter', and 'reduce' These functions allow for concise and expressive operations on arrays:
 */


let numbers = [1,2,3,4,5,6,7,8,9,10]
let squareNumbers = numbers.map{$0 * $0 }
print(squareNumbers)

// Using filter
let filterNumbers = numbers.filter { $0 % 2 != 0}
let filterSomeNumbers = numbers.filter { $0 % 2 == 0}
print(filterNumbers)
print(filterSomeNumbers)



/*
 i. Shallow Copy:
 A shallow copy creates a new array with the same elements, but it does not duplicate the elements themselves. Changes made to the elements inside the copied array will affect the original array and vice versa.
 */

//using array initalizer

let originalArray: [Int] = [100,211,3,4,5]
let copiedArray = Array(originalArray)
print(copiedArray)


// Using '...' (Range Operator)
let thislArray =  [111,222,389,490,500]
let myCopiedArray = thislArray[...]
print(myCopiedArray)


/*
 
 j. Deep Copy
 A deep copy creates a new array with entirely new instances of the elements. Changes made to the elements inside the copied array will not affect the original array, and vice versa.
 */

//Using map for value types
var mySomeArray = [50,11,24,89,49]
var myCopiedSomeArray = mySomeArray.map{$0}
print(myCopiedSomeArray)
mySomeArray.append(399)
print(mySomeArray)
print(myCopiedSomeArray)


//Using Map
class MyClass {
    var value: Int
    init(value: Int) {
        self.value = value
    }
}

let mainOriginalArray = [MyClass(value: 1), MyClass(value: 2), MyClass(value: 3)]
let mainCopiedArray = mainOriginalArray.map { MyClass(value: $0.value) }


//Using NSCopying for Objective -C classes

class MyObjCClass: NSObject, NSCopying {
    var value: Int
    init(value: Int) {
        self.value = value
    }

    func copy(with zone: NSZone? = nil) -> Any {
        return MyObjCClass(value: self.value)
    }
}

let iOriginalArray = [MyObjCClass(value: 1), MyObjCClass(value: 2), MyObjCClass(value: 3)]
let mCopiedArray = iOriginalArray.map { $0.copy() as! MyObjCClass }



/*
Enum Raw Values- You need to assign values to enum so they have meaning. This lets you create them dinamincally and use them in different ways. With Int define in the enum, Swift automatically assigns a number starting from 0 and you can use that number to create an instance of the appropriate enum case.
 */


enum Planet: Int {
    case earth = 1
    case mercury
    case saturn
    case jupiter
    case venus
    case mars
}
let myEnum1 = Planet.earth
print(myEnum1)

let myEnum2 = Planet.mercury
print(myEnum2)

// For loops that interates through all cases and prints them out

 enum Planets: CaseIterable {
     case mercury1, venus2, earth3, mars4, jupiter5, saturn6, uranus7, neptune8
 }



 // Iterate over all enum cases using a for loop
 for planet in Planets.allCases {
     print(planet)
 }


//----------------------
enum Result {
    case success
    case failure
}

//When we use it, we must choose one those two or related values
let result1 = Result.failure
print(result1)

let result2 = Result.success
print(result2)



//Enum Associated Values
enum Activity {
    case bored
    case running(destination: String)
    case talking(topic: String)
    case singing(volume: Int)
}
let talking = Activity.talking(topic: "football")
print(talking)

let running = Activity.running(destination: "Lukomaki")
print(running)

let singing = Activity.singing(volume: 5)




/*
 Enum Raw Values- You need to assign values to enum so they have meaning. This lets you create them dinamincally and use them in different ways. With Int define in the enum, Swift automatically assigns a number starting from 0 and you can use that number to create an instance of the appropriate enum case.
 */



//-----------------------------------------------------------------




//Syntax Structure of Sets
//var setName: Set<Type> = [value10, value20, value30, ...]



// Example: a
var programmingLanguage: Set<String> = Set(["Java", "Swift", "Html", "JavaScript"])
print(programmingLanguage)

// b. Using Set Literal:
var clocks: Set<String> = Set(["WallClock", "WristWatch", "TableClock"])

// c. Empty Set Declaration:
var emptySet: Set<Int> = Set()

//Different wars of Reading Sets in Swift: Checking if Set is empty:
if programmingLanguage.isEmpty {
    print("The set is empty")
}else{
    print("The set is not empty")
}
print(programmingLanguage)




let noOfWallClocks = clocks.count

//Checking if elements exist.
if clocks.contains("WallClock"){
    print("This set contains WallClock")
    
}else{
    print("This set does not contain WallClock")
}


//Differents ways of Access and Loop Through Swift Set:

// d. For-In Loop:
for clock in clocks {
    print(clock)
}


// e. Enumerated For-In Loop
for (index, clock) in clocks.enumerated(){
    print("Index: \(index), Clocks: \(clocks)")
}




// f. ForEach Methods:
clocks.forEach {clock in
 print(clocks)
}

// g. Uniqueness of Set
var uniqueSet: Set<Int> = [1,2,2,3,4,4,5,5]
print(uniqueSet)

// h. Set Operations: Swift provides set operations like Union, intersection,subtraction and intersection.

let set1: Set<Int> = [1,2,3,4]
let set2: Set<Int> = [3,4,5,6]

let unionSet = set1.union(set2)
let intersectionSet = set1.intersection(set2)
let subtractedSet = set1.subtracting(set2)

print(unionSet)
print(intersectionSet)
print(subtractedSet)

//Set MemberShip
let fruit: Set<String> = ["Apple", "Banana", " Orange"]

if fruit.contains("Banaa"){
    print("This set contains Banana")
    
}else{
    print("This set does not contain Banana")
}

//Set Intersection and Removal. Elements cOran be added and as well removed

var mutableSet: Set<String> = ["apple", "Orange"]
mutableSet.insert("SweetPotatoe")
mutableSet.remove("apple")
print(mutableSet)

//Subscript syntax
var subjects: Set<String> = ["Math", "Science", "History"]

if !subjects.contains("English") {
    subjects.insert("English")
}


// Syntax Structure of Swift Tuples:
//let myTuple: (Typle1, Tuple2, ...)

//Named Elements:
let person = (name: "john", age: 30, isStudent: true)
print(person)


