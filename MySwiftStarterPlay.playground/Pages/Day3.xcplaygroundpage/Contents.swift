//: [Previous](@previous)

import Foundation

//DAY 3


// Operator overloading
let meaningOfLife = 42
let doubleMeaning = 42 + 42

let fakers = "Fakers gonna "
let action = fakers + "fake"

let firstHalf = ["John", "Paul"]
let secondHalf = ["George", "Ringo"]
let beatles_band = firstHalf + secondHalf


// Compound assignment operators
var score = 95
score -= 5

var quote = "The rain in Spain falls mainly on the "
quote += "Spaniards"


// Comparison operators
let firstName = "Paul"
let secondName = "Sophie"

let firstAge = 40
let secondAge = 10

print(firstName == secondName)
print(firstName != secondName)
print(firstName < secondName)
print(firstName >= secondName)

print(firstAge == secondAge)
print(firstAge != secondAge)
print(firstAge < secondAge)
print(firstAge >= secondAge)


// Conditions
let firstCard = 11
let secondCard = 10

if firstCard + secondCard == 2 {
    print("Aces – lucky!")
} else if firstCard + secondCard == 21 {
    print("Blackjack!")
} else {
    print("Regular cards")
}


let age1 = 12
let age2 = 21

if age1 > 18 && age2 > 18 {
    print("Both are over 18")
}

if age1 > 18 || age2 > 18 {
    print("At least one is over 18")
}


let weather = "sunny"
switch weather {
case "rain":
    print("Bring an umbrella")
case "snow":
    print("Wrap up warm")
case "sunny":
    print("Wear sunscreen")
    fallthrough // fara com que seja executado o prox. passo também
default:
    print("Enjoy your day!")
}


// Ternary operator
let firstCard2 = 11
let secondCard2 = 10
print(firstCard == secondCard ? "Cards are the same" : "Cards are different")


// Range operator
let score2 = 85

switch score2 {
case 0..<50:
    print("You failed badly.")
case 50..<85:
    print("You did OK.")
default:
    print("You did great!")
}


let names = ["Piper", "Alex", "Suzanne", "Gloria"]
print(names[1...])
print(names[0...2])

//: [Next](@next)
