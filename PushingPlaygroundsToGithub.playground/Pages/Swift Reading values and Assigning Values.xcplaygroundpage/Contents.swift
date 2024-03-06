//Distinction between Reading Values and Assigning values to variable or items in a code

import Foundation

/**
 The distinction of  Reading values and assigning values to variables or items in a code
 In Swift, there is a distinction between reading values (retrieving or accessing data) and assigning values (setting or updating data) to variables or items, and the approach depends on the context, data structure, and the type of variable.
 */

//Reading by Numerical Positions: Explanation: Here, we have an array of numbers, and we read the value at the third position (index 2) using the numerical position.

let numbers = [10, 20, 30, 40, 50]
let thirdNumber = numbers[2]
print("the third number is \(thirdNumber)")


//Reading by Names (Dictionary)
var person: [String : Any] = ["name": "John", "age": 25, "city": "New York"]
let personName = person["name"] 

print("The person's name is \(personName ?? "unknown")")

//Reading by Names (Struct). Explanation: In a struct, we read values by specifying the property name. Here, we read the x-coordinate of the Point struct.


struct Point{
    var x: Int
    var y: Int
}

let origin = Point(x: 0, y: 0)
let originX = origin.x
print("The x-coordinate of the origin is \(originX)")


//Assigning Value by Numerical Positions. Explanation: We assign a new value "Robert" to the second position (index 1) in the array.

var names = ["Alice", "Bob", "Charlie"]
names[1] = "Robert"
print("the updated names array: \(names)")


//Assigning by Names (Dictionary)
var personx: [String: Any] = ["name": "John", "age": 25, "city": "New York"]
personx["age"] = 26
print("the update age is \(personx["age"] ?? 0)")



//Explanation: In a struct, we assign a new value by specifying the property name. Here, we update the y-coordinate of the Point struct.

struct xPoint {
    var x: Int
    var y: Int
}

var position = xPoint(x: 10, y: 20)
position.y = 30
print("The updated y-coordinate is \(position.y)")
