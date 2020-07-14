//: [Previous](@previous)

import Foundation

//DAY 10 - Classes

class Dog {
    var name: String
    var breed: String

    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
    
    func makeNoise() {
        print("Woof!")
    }
}

let pet = Dog(name: "Cani", breed: "Cani Corso")


// class inheritance e override
class Poodle: Dog {
    init(name: String) {
        super.init(name: name, breed: "Poodle")
    }
    
    override func makeNoise() {
        print("Yip!")
    }
}


let poppy = Poodle(name: "Happy")
poppy.makeNoise()



// Cria uma classe que não pode ser herdada ou sobrescrita
final class Cat {
    var name: String
    var breed: String

    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}


//Deinitializers
class Person {
    var name = "John Doe"

    init() {
        print("\(name) is alive!")
    }

    func printGreeting() {
        print("Hello, I'm \(name)")
    }
    
    deinit {
        print("\(name) is no more!")
    }
}

//: [Next](@next)
