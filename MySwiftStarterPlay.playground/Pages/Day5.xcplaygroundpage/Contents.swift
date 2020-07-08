//: [Previous](@previous)

import Foundation

//DAY 5 - Functions

func printHelp(){
    let message = """
    bem vindo ao meu app
    """
    
    print(message)
}

printHelp()


func square(number: Int) -> Int {
    return number * number
}

let result = square(number: 8)
print(result)



func doMath() -> Int {
    return 5 + 5
}

func doMoreMath() -> Int {
    5 + 5
}


// Label Parameter
func sayHello(to name: String) {
    print("Hello, \(name)!")
}

sayHello(to: "Hirvin")


// Omitting parameter labels
func greet(_ person: String) {
    print("Hello, \(person)!")
}

greet("Hirvin")


// Default Parameter
func greet2(_ person: String, nicely: Bool = true) {
    if nicely == true {
        print("Hello, \(person)!")
    } else {
        print("Oh no, it's \(person) again...")
    }
}

greet2("Taylor")
greet2("Taylor", nicely: false)



// Variadic functions
func square2(numbers: Int...) {
    for number in numbers {
        print("\(number) squared is \(number * number)")
    }
}
square2(numbers: 1, 2, 3, 4, 5)


// Throw | Try | Catch

enum PasswordError: Error {
    case obvious
}

func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }

    return true
}

do {
    try checkPassword("password")
    print("That password is good!")
} catch {
    print("You can't use that password.")
}


// inout remove o escopo de bloco das variaveis passadas para funções
func doubleInPlace(number: inout Int) {
    number *= 2
}
var myNum = 10
doubleInPlace(number: &myNum)

//: [Next](@next)
