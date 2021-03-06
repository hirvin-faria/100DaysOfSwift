//: [Previous](@previous)

import Foundation

//DAY 2

// Arrays
let john = "John Lennon"
let paul = "Paul McCartney"
let george = "George Harrison"
let ringo = "Ringo Starr"

let beatles = [john, paul, george, ringo]
beatles[1]


//Set
let colors = Set(["red", "green", "blue"])
let colors2 = Set(["red", "green", "blue", "red", "blue"])


//Tuples
var name = (first: "Hirvin", last: "Faria")
name.0
name.last
name.last = "Nogueira"
name.last


//Dictionaries
let heights = [
    "Taylor Swift": 1.78,
    "Ed Sheeran": 1.73
]
heights["Taylor Swift"]


let favoriteIceCream = [
    "Paul": "Chocolate",
    "Sophie": "Vanilla"
]
favoriteIceCream["Paul"]
favoriteIceCream["Charlotte"] //nil – nothing at all
favoriteIceCream["Charlotte", default: "Unknown"] // Acessa e retorna um valor default caso seja nil


// Empty collections
var teams = [String: String]()
teams["Paul"] = "Red"

var scores = [Int: Int]()
scores[0] = 300

//Set Empty
var words = Set<String>()
var numbers = Set<Int>()


// Também podemos usar essa sintaxe para arrays e dicionarios
var scoresDict = Dictionary<String, Int>()
var results = Array<Int>()


//Enum
enum Result {
    case success
    case failure
}

let result = Result.failure


enum Activity {
    case bored
    case running(destination: String)
    case talking(topic: String)
    case singing(volume: Int)
}

let talking = Activity.talking(topic: "football")

enum Planet: Int {
    case mercury
    case venus
    case earth
    case mars
}

let earth = Planet(rawValue: 2)


//: [Next](@next)
