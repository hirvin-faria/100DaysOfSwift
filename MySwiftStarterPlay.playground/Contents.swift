import UIKit


// DAY 1
let constante = "let representa uma constante"
var variavel = "var representa uma variavel"
variavel = "uma variavel pode alterar seu valor"

let str = "Essa é uma string, seu tipo esta sendo inferenciado quando ocorre a atribuição"
let str2: String = "Já essa string possui seu tipo de forma explicita"


//Swift Possui varios tipos como:
let book: String = "Pet Sematary"
let year: Int = 1989
let height: Double = 1.78
let boolean: Bool = true


// Multi Line
let frase = """
Esta e uma frase \
com multiplas linhas
swift nos permite isso
"""

// interpolação
print("A palavra \(constante) e a palavra \(variavel)")



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
