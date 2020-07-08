//: [Previous](@previous)

import Foundation

//DAY 4

//Loop For
let count = 1...10

for number in count {
    print("Number is \(number)")
}

//Loop for in Array
let albums = ["Red", "1989", "Reputation"]

for album in albums {
    print("\(album) is on Apple Music")
}

// No use constant
print("Players gonna ")

for _ in 1...5 {
    print("play")
}


// Lop for
let names2 = ["Sterling", "Cyril", "Lana", "Ray", "Pam"]

// Usando a contante dentro do loop
for name in names2 {
    print("\(name) is a secret agent")
}

// Sem usar a contante dentro do loop
for _ in names2 {
    print("[CENSORED] is a secret agent!")
}


// Loop While
var number = 1

while number <= 20 {
    print(number)
    number += 1
}

print("Ready or not, here I come!")


// Loop Repeat

var number3 = 1

repeat {
    print(number3)
    number3 += 1
} while number3 <= 20

print("Ready or not, here I come!")

repeat {
    print("This is false")
} while false


// Exiting multiple loops

outerLoop: for i in 1...10 {
    for j in 1...10 {
        let product = i * j
        print ("\(i) * \(j) is \(product)")

        if product == 50 {
            print("It's a bullseye!")
            break outerLoop
        }
    }
}


//: [Next](@next)
