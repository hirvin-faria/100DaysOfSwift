//: [Previous](@previous)

import Foundation

//DAY 6 - Closures Part 1

let driving = {
    print("I'm driving in my car")
}

driving()


let drivingWithParm = { (place: String) in
    print("I'm going to \(place) in my car")
}

drivingWithParm("Berlin")


let drivingWithReturn = { (place: String) -> String in
    return "I'm going to \(place) in my car"
}

let message = drivingWithReturn("Berlin")
print(message)


// Closures como parametros de funções
func travel(action: () -> Void){
    print("I'm getting ready to go.")
    action()
    print("I arrived!")
}

travel(action: driving)




//Traling Closure Syntax
func travel2(action: () -> Void) {
    print("I'm getting ready to go.")
    action()
    print("I arrived!")
}
travel {
    print("I'm driving in my car")
}

//: [Next](@next)
