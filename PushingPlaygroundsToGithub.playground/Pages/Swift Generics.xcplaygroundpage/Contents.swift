//Swift Generics

import Foundation


//Example 1
func swapValues<T>(_ a: inout T, _ b: inout T) {
    let temp = a
    a = b
    b = temp
    
}
var x = 5
var y = 10

swapValues(&x, &y)
print("values values: \(x), \(y)")



//Example 2
func concatenate<T, U>(_ value1: T, _ value2: U) -> String {
    return "\(value1), \(value2))"
}
 
let result10 = concatenate("Hello", "World!")
//print(result)
print("Concatenated result:, \(result10)")
