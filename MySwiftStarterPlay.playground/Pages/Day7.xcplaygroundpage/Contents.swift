//: [Previous](@previous)

import Foundation

//DAY 7 - Closures Part 2

func travel(action: (String) -> Void) {
    print("I'm getting ready to go.")
    action("London")
    print("I arrived!")
}
travel { (place: String) in
    print("I'm going to \(place) in my car")
}


func travelString(action: (String) -> String) {
    print("I'm getting ready to go.")
    let description = action("London")
    print(description)
    print("I arrived!")
}
travelString { (place: String) -> String in
    return "I'm going to \(place) in my car"
}


// Short Parm

func travelShort(action: (String) -> String) {
    print("I'm getting ready to go.")
    let description = action("London")
    print(description)
    print("I arrived!")
}
travelShort {
    "I'm going to \($0) in my car"
}


// Multiplo Parm
func travelMultParm(action: (String, Int) -> String) {
    print("I'm getting ready to go.")
    let description = action("London", 60)
    print(description)
    print("I arrived!")
}
travelMultParm {
    "I'm going to \($0) at \($1) miles per hour."
}


//Returning closures from functions

func travelReturnClos() -> (String) -> Void {
    return {
        print("I'm going to \($0)")
    }
}

let result = travelReturnClos()
result("London")
//or
let result2 = travelReturnClos()("London")



// Capturing values
func travelCap() -> (String) -> Void {
    var counter = 1

    return {
        print("\(counter). I'm going to \($0)")
        counter += 1
    }
}

let result3 = travelCap()
result3("London")

//: [Next](@next)
