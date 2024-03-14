//optionals and safely unwrapping them and error handling in Swift
import Foundation
/**
- Learn about optionals and safely unwrapping them.
- Explore error handling in Swi
 */


//Optionals


/**
 1. Definition
 - Optionals in Swift represent either wrapped value or nil - which indicate the absence of value.
 - It allows variables to hold either a value or nothing at all. Optionals are a powerful feature in
 - Swift that helps handle the potential absence of a value in a type-safe manner.
 - Syntax for declaring optional using "?" symbol.

 
2. Optional Declaration
- var someValue: Int?  //Declaring an optional integer.


 3. Optional Unwrapping:
 - Forced Unwrapping (!): Accessing the value inside an optional using !,
 - but it might lead to a runtime crash if the optional is nil.
 let unwrappedValue = optionalValue!


4. Optional Binding (if let and guard let): Safely unwrapping
- an optional and assigning its value to a constant within
- a conditional statement.
 if let unwrappedValue = optionalValue {
    // Use unwrappedValue
} else {
    // Handle the case where optionalValue is nil
}

 
 
 
5. Nil-Coalescing Operator:
 - Using the ?? operator to provide a default value for an optional if it is nil.
 
 let result = optionalValue ?? defaultValue

 
 6. Implicitly Unwrapped Optionals:

 Declaring optionals that are automatically unwrapped, assuming they will always contain a value after being set initially.
 var implicitlyUnwrapped: String! = "Hello"

 
 7.Optional Chaining:
 
 Accessing properties, methods, and subscripts on an optional that might currently be nil. If the optional is nil, the whole chain fails gracefully.
 
 func process(value: Int?) {
     // ...
 }

 func getValue() -> String? {
     // ...
 }




func getHaterStatus() -> String? {
    return "Hate"
}

func getHaterStatus(weather: String) -> String? {
    if weather == "sunny" {
        return nil
    }else{
        return "Hate"
    }
}



getHaterStatus(weather: "sunny")
getHaterStatus(weather: "stormy")

var status: String?
status = getHaterStatus(weather: "rainy")


func takeHaterAction(status: String){
    if status == "Hate"{
        print("Hating")
    }
}


if let unwrappedStatus = status {
    //unwrappedStatus contains a non-optional value!
}else{
    // in case you want an else block, here you go..
}


 */

/*
// The return Output for this code doesn't make much sense. Optional is needed!

func yearAlbumReleased(name: String) -> Int{
    if name == "Taylor Swift"{return 2006}
    if name == "Fearless" {return 2008}
    if name == "Speak Now" {return 2010}
    if name == "Red" {return 2012}
    if name == "1989" {return 2014}
        
        
    return 0
}
yearAlbumReleased(name: "Lantern")

 */



//Better code is to make the function return either an integer or nil.

/*
func yearAlbumReleased(name: String) -> Int? {
    if name == "Taylor Swift"{return 2006}
    if name == "Fearless" {return 2008}
    if name == "Speak Now" {return 2010}
    if name == "Red" {return 2012}
    if name == "1989" {return 2014}
        
        
    return nil
}
yearAlbumReleased(name: "lantern")
*/


// Now that the returns nil, we need to unwrap the result using if let because we need to check
//wether a value exist or not. Force unwrapping optionals "!!

/*
func yearAlbumReleased(name: String) -> Int? {
    if name == "Taylor Swift"{return 2006}
    if name == "Fearless" {return 2008}
    if name == "Speak Now" {return 2010}
    if name == "Red" {return 2012}
    if name == "1989" {return 2014}
        
        
    return nil
}

var year = yearAlbumReleased(name: "Red")
if year == nil {
    
    print("There was an error")
    
}else{
    
    print("It was released in \(year!)") //Note the exclamation mark: it means "I'm certain this contains a value, so force unwrap it now."
}
*/
//Optional Chaining - Makes run a code if your optional has a value.


func yearOneAlbumReleased(year: Int) -> String? {
    switch year {
    case 2006: return "Taylor Swift"
    case 2008: return "Fearless"
    case 2010: return "Speak Now"
    case 2012: return "Red"
    case 2014: return "1989"
    default: return nil
        
    }
}
//let album = yearOneAlbumReleased(year: 2006)?.uppercased() //? is the optional chaining. Everything after the ? when run if the optional has a value.
//print("The album is  \(album!)")


// The nil Coalescing operator: Example

let album = yearOneAlbumReleased(year: 2001) ?? "unknown"
print("The album is \(album)")

//Example 1. uses Nil Coalescing Optional method

//Checking if a number is even or odd
func checkEvenOdd(_ number: Int) -> String? {
    return number % 2 == 0 ? "Even" : "Odd"
}
let result1 = checkEvenOdd(-1) ?? "invalid input"
print("Number is \(result1)")


// Example 2: Mapping numbers to their squares

// Example 3: Determining the season based on the month

// Example 4: Checking if a character is a vowel
// Example 5: Converting a string to an integer






// Example 2: Mapping numbers to their squares
func squareNumber(_ number: Int) -> Int? {
    return number > 0 ? number * number : nil
}

//
func square(_ number: Int) -> Int? {
    guard number >= 0 else { return nil }
    return number * number
}

let squaredValue = square(4) ?? -1
print("Squared value: \(squaredValue)")




//--------------------------------------------------------



// Example 3: Determining the season based on the month
func determineSeason(month: Int) -> String? {
    switch month {
    case 1...3: return "Winter"
    case 4...6: return "Spring"
    case 7...9: return "Summer"
    case 10...12: return "Autumn"
    default: return nil
    }
}

func seasonForMonth(_ month: Int) -> String? {
    switch month {
    case 1...3: return "Winter"
    case 4...6: return "Spring"
    case 7...9: return "Summer"
    case 10...12: return "Autumn"
    default: return nil
    }
}

let currentSeason = seasonForMonth(8) ?? "Unknown"
print("Current season: \(currentSeason)")




//------------------------------------------------------




// Example 4: Checking if a character is a vowel
func isVowel(_ char: Character) -> Bool? {
    let vowels: Set<Character> = ["a", "e", "i", "o", "u"]
    return vowels.contains(char.lowercased().first ?? Character(""))
}


func ismyVowel(_ character: Character) -> Bool? {
    let vowels: Set<Character> = ["a", "e", "i", "o", "u"]
    return vowels.contains(character.lowercased())
}

let charIsVowel = ismyVowel("A") ?? false
print("Is character a vowel? \(charIsVowel)")




//--------------------------------------------------------------------





// Example 5: Converting a string to an integer
func convertToInt(_ str: String) -> Int? {
    return Int(str)
}



func stringToInt(_ str: String) -> Int? {
    return Int(str)
}

let numberFromString = stringToInt("42") ?? -1
print("Number from string: \(numberFromString)")


//------------------------------------------------------------------


/*
- An optional is a type that can either have a value or be nil. To use the
 - value of an optional, you need to unwrap it using one of the following
  - methods1:
 
 Causion:
 - By using optional binding or the nil-coalescing operator, you can handle cases
   where the optional might be nil without causing runtime errors.
 - It provides a safer alternative to forced unwrapping, especially when dealing with uncertain or optional values.


 //Example 1. Shows forced unwrapping "!" is not ideal for optional with Nil value.

var name1: String? = "Alice"
print(name1!.count) // 5
//name1 = nil
//print(name1!.count) // Error message says: Fatal error: Unexpectedly found Nil  while unwrapping an Optional value

 
- Improvement to Example 1: Avoid forced unwrapping when the value can be nil to prevent runtime errors.
-  Instead, use optional binding or nil-coalescing operators.
 */
 
 
 
// Using Nil-Coalescing Operator to reproduce the code in Example 1:

var name1: String? = "Alice"



// Using Nil-Coalescing Operator to provide a default value if name1 is nil

let count = name1?.count ?? -1 // Provide a default value like -1 or any other meaningful default
print(count)



// Setting name1 to nil
name1 = nil

let countAfterNil = name1?.count ?? -1 // Provide a default value
print(countAfterNil)



//Using Optional Binding to reproduce the code in Example 1:
var firstname: String? = "Alice"

if let unwrappedCount = firstname?.count {
    print(unwrappedCount)
} else {
    print("Default value or handle nil case here")  // You can handle the nil case as needed
}

// Setting name1 to nil to simulate the nil case
name1 = nil

if let unwrappedCount = name1?.count {
    print(unwrappedCount)
} else {
    print("Default value or handle nil case here")  // You can handle the nil case as needed
}








/*
 Optional binding: You use ["if let" or "guard let"] to check if an optional has a value and assign it to a new constant. This is a safe way to unwrap an optional. For example:
 */

var name: String? = "Alice"
if let unwrappedName = name {
    print(unwrappedName.count)
}else{
    print("name is nil")
}
name = nil
if let unwrappedName = name {
    print(unwrappedName.count)
}else{
    print("name is nil")
}



/*
Optional Binding ( "if le" OR "guard let": How to use guard let in optional binding : Example.
Optional binding allows you to check if the optional contains a value and, if so, safely unwrap and use that value within a specific scope
 */


var surname: String? = "Nebo"
if let unwrappedName = surname {
    print(unwrappedName.count)
    
}else{
    print("surname is nil")
}

surname = nil
if let unwrappedName = surname {
    print(unwrappedName.count)
}else{
    print("surname is nil")
}




//Example with using "guard let"

func processName(_ name: String?) {
    guard let unwrappedName = name else {
        print("Name is nil")
        return
    }
    
    // Now you can safely use unwrappedName within this scope
    print("Processing name: \(unwrappedName)")
}

// Example usage
let validName = "John"
let invalidName: String? = nil

processName(validName)  // Output: Processing name: John
processName(invalidName)  // Output: Name is nil




//Different ways for looping array elements using for loops

var myArray: [Int] = [1,2,3,4,5,6,7,8,9,10]

 //method 1: Using traditional  for loop with indices
for i in 0..<myArray.count {
    print(myArray[i])
}

//method 2: Using enumerated () method to get both index and value
for (index, value) in myArray.enumerated() {
    print("Index: \(index), value; \(value)")
}

//Method 3; Using for-in loop directily on array values
for value in myArray {
    print(value)
}

// method 4: Using forEach function
myArray.forEach { value in
    print(value)
    
}


//var myArray: [elementType] = [element1, element2, element3]ts:
var rArray = [1,2,3,4,5,6,7,8,9, 10]
for i in 0..<rArray.count {
    print(rArray[i])
}

for value in rArray {
    print(value)
}

for (index, value) in rArray.enumerated() {
    print("index: \(index), value: \(value) ")
    
}

var myMatrix = [
    [1,2,3],
    [4,5,6],
    [7,8,9]
]

for i in 0..<myMatrix.count {
    for j in 0..<myMatrix[i].count {
        print("value at row \(i), column \(j): \(myMatrix[i][j])")
    }
}


//Function calculate square.
func calculateSquare(number: Int) -> Int {
    return number * number
}
//Function call
let iResult1 = calculateSquare(number: 5)
print(iResult1)




func addTwo(a: Int, b: Int) -> Int {
    return a + b
}

let iResult2 = addTwo(a: 8, b: 8)
print(iResult2)




func findMaximum(numbers: [Int]) -> Int? {
    return numbers.max()
}
let myMax = findMaximum(numbers: [1,2,3,5,5,82,834])
print(myMax ?? 0)





func concatenateString(first: String, second: String) -> String {
    return  first + second + "Welcome to the programm"
}
let greetingMessage = concatenateString(first: "Charles ", second: "Nebo ")
print(greetingMessage)


//Calculate and Processing
func calculateTotalPrice(itemPrices: [Double]) -> Double {
    let quotient = itemPrices.reduce(1, /)
    
    return quotient
}
let prices = [12.0, 8.75, 5.99, 34.0, 24.0]
let quotientPrices = calculateTotalPrice(itemPrices: prices)
print("the product price is \(quotientPrices)")



// Finding sorted numbers in Array
func sortedNumbers(numbers: [Int]) -> [Int] {
    let sortedNumbers = numbers.sorted()
    
    return sortedNumbers
}
 let unSorted = [5,2,8,1,7]
 let sorted =  sortedNumbers(numbers: unSorted)
print(sorted)





//Find the middle number in a sorted Array
func findMiddleNumber(sortedArray: [Int]) -> Int? {

    guard  !sortedArray.isEmpty else {
        return nil    // returns nil for empty array
    }
    let middleIndex = sortedArray.count / 2
    return sortedArray[middleIndex]
}
let sortedNumbers = [1,4,7,10,15,20,30,50,80,90]
if let middleNumber = findMiddleNumber(sortedArray: sortedNumbers){
    print("The middle number is: \(middleNumber)")
}else{
    print("the array is nil")}


// This code assumes that the array is not sorted, and should be sorted before finding the middle number

func findMiddleNumbers(numbers: [Int]) -> Int? {
    let sortedNumbers = numbers.sorted()

    guard  !sortedNumbers.isEmpty else {
        return nil    // returns nil for empty array
    }
    let middleIndex = sortedNumbers.count / 2
    return sortedNumbers[middleIndex]
}

let unsortedNumber = [1,4,7,10, 25,20,30,80,90]
if let middleNumber = findMiddleNumbers(numbers: unsortedNumber) {
    print("The middle number is : \(middleNumber)")
}else{
    print("the array is empty")
}

//Other Array sort functions: Built in sort functions
var numbers = [4,2,8,1,7,1]
let sortedMyNumbers = numbers.sorted()
print(sortedMyNumbers)

//Sets
var uniqueNumbers: Set<Int> = [5,2,8,1,7,1]
let sortedSet = uniqueNumbers.sorted()
print(sortedSet)

// Dictionaries
let myDictionary = ["Banana": 3, "Apple": 5, "Orange": 2]
let sortedKeys = myDictionary.keys.sorted()
print(sortedKeys)

//

//Error Handling in Swift

import Foundation

/**
 
 Error Handling in Swift
 - Error handling is the process of responding to and recovering from error conditions in your
   program.
 - When something unexpected happens, Swift allows you to throw and catch errors, propagate
   them, and manipulate recoverable errors at runtime1. Here’s how it works:


 1. Representing Errors:
 - Errors in Swift are represented by values of types that conform to the Error protocol.
 - This protocol indicates that a type can be used for error handling.
 - Enumerations (enums) are particularly well-suited for modeling related error conditions.
 - You can associate additional information with each error case using associated values.
 Example 2:
 
 */
enum VendingMachineError: Error {
    case invalidSelection
    case insufficientFunds(coinsNeeded: Int)
    case outOfStock
}

/**
 When everything goes smoothly (no errors), you can handle the success case. In this example, we assume that buySnack() returns a valid item.
 
I apologize for the oversight. It seems I used a placeholder function called `buySnack()` without defining it. Let's rectify that by creating a simple example where we define the `buySnack()` function and demonstrate error handling.
 */

// Example function that simulates buying a snack
func buySnack(itemName: String, coinsInserted: Int) throws -> String {
    let availableItems = ["Chips", "Candy", "Soda"]
    
    guard availableItems.contains(itemName) else {
        throw VendingMachineError.invalidSelection
    }
    
    let itemPrice: [String: Int] = ["Chips": 3, "Candy": 2, "Soda": 1]
    
    guard let price = itemPrice[itemName] else {
        throw VendingMachineError.outOfStock
    }
    
    if coinsInserted < price {
        throw VendingMachineError.insufficientFunds(coinsNeeded: price - coinsInserted)
    }
    
    // Process the purchase
    return "Enjoy your \(itemName)!"
}

// Example usage
do {
    let purchasedItem = try buySnack(itemName: "Chips", coinsInserted: 4)
    print(purchasedItem)
} catch VendingMachineError.invalidSelection {
    print("Invalid item selected.")
} catch VendingMachineError.insufficientFunds(let coinsNeeded) {
    print("Please insert \(coinsNeeded) more coins.")
} catch VendingMachineError.outOfStock {
    print("Sorry, that item is out of stock.")
} catch {
    print("An unexpected error occurred: \(error)")
}


/**

In this revised example:
- We define the `buySnack()` function that takes an item name and the number of coins inserted.
- The function throws specific errors based on the scenario (invalid selection, insufficient funds, or out of stock).
- The `do-catch` block handles each error case appropriately.

Feel free to adapt this code snippet to your specific use case!

 */



var inArray = [1,4,5,3,3,5]
var newArray = inArray.sorted()
print(newArray)

//Sortedby function
let names = ["Chris", "Alex", "Ewa", "Barry", "Daniel"]
func backward(_ s1: String, _ s2: String) -> Bool {
    return s1 > s2
}

var reverseNames = names.sorted(by: backward)
print(reverseNames)

//Closure expression-
/**
 { (<#parameters># ->    <#return type# > in
    < #statements#>
 }

 Example
 */
reverseNames = names.sorted(by: { (s1: String, s2: String) -> Bool in
 return s1 > s2

})





