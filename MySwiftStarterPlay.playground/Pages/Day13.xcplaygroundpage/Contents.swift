//: [Previous](@previous)

import Foundation

var str: String = "Hello, playground"
let cash: Double = 200.50


var songs = ["Shake it Off", "You Belong with Me", "Back to December"]
type(of: songs)                                                                                // Retorna o tipo

var songsAny: [Any] = ["Shake it Off", "You Belong with Me", "Back to December", 3]            // Any permite que um Array armazene diversos tipos de dados diferentes



// Arrays Vazios
var barcos: [String] = []
var carros = [String]()



// Dicionarios: armazenam os dados no formato de chave e valor.
var person = [
    "first": "Taylor",
    "middle": "Alison",
    "last": "Swift",
    "month": "December",
    "website": "taylorswift.com"
]
person["middle"]
person["month"]



for i in 1...10 {
    print("\(i) x 10 is \(i * 10)")
}

for song in songs {
    print("My favorite song is \(song)")
}
//: [Next](@next)
