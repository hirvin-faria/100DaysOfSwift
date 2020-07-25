//: [Previous](@previous)

import Foundation

// Functions
func favoriteAlbum(is albumName: String) -> String {
    return "My favorite album is \(albumName)"
}

print(favoriteAlbum(is: "Light Me Up"))




// Optionals



func yearAlbumReleased(name: String) -> Int? {
    if name == "Taylor Swift" { return 2006 }
    if name == "Fearless" { return 2008 }
    if name == "Speak Now" { return 2010 }
    if name == "Red" { return 2012 }
    if name == "1989" { return 2014 }

    return nil
}




//Esta funcao retorna uma String opcional, ou seja o retorno pode ser uma String ou nil
func getHaterStatus(weather: String) -> String? {
    if weather == "sunny" {
        return nil
    } else {
        return "Hate"
    }
}


// Recebe Obrigatoriamente uma String
func takeHaterAction(status: String) {
    if status == "Hate" {
        print("Hating")
    }
}


// Instancia uma String Opcional para a funcao que retorna um opcional
var status: String?
status = getHaterStatus(weather: "rainy")


// Desempacota a String, e caso nao seja nil executa a funcao
if let haterStatus = getHaterStatus(weather: "rainy") {
    takeHaterAction(status: haterStatus)
}




// enum
enum WeatherType {
    case sun
    case cloud
    case rain
    case wind
    case snow
}

func getHaterStatus(weather: WeatherType) -> String? {
    switch weather {
    case .sun:
        return nil
    case .cloud, .wind:
        return "dislike"
    case .rain:
        return "hate"
    default:
        return nil
    }
}

getHaterStatus(weather: WeatherType.cloud)



// Structs
// Structs possuem inicializadores automaticamente
// Strucks não possuem herança
// Strucks usam pasagens por valor, ou seja criam cópias exatas de seus valores em um novo espaço independente de memória.
struct Person{
    var clothes: String
    var shoes: String
    
    // Method em uma struct
    func describe() {
           print("I like wearing \(clothes) with \(shoes)")
    }
}

let taylor = Person(clothes: "T-shirts", shoes: "sneakers")
let other = Person(clothes: "short skirts", shoes: "high heels")

var taylorCopy = taylor
taylorCopy.shoes = "flip flops"

print(taylor)
print(taylorCopy)

taylor.describe()


// Class
// Classes nao possuem inicializadores. sendo necessário declaralos com init()
// Classes usam referencias para seus atributos e metodos. Ou sejam apontam para um espaço de memoria instanciado por um objeto baseado em sua classe.
// Classes possuem herenças

class PersonClass {
    var clothes: String
    var shoes: String
    
    init(clothes: String, shoes: String) {
        self.clothes = clothes
        self.shoes = shoes
    }
}

class Singer {
    var name: String
    var age: Int

    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }

    func sing() {
        print("La la la la")
    }
}

class RockSinger: Singer {
    override func sing() {
        print("Trucks, guitars, and liquor")
    }
}

class HeavyMetalSinger: Singer {
    var noiseLevel: Int

    init(name: String, age: Int, noiseLevel: Int) {
        self.noiseLevel = noiseLevel
        super.init(name: name, age: age)
    }

    override func sing() {
        print("Grrrrr rargh rargh rarrrrgh!")
    }
}


var taylorMomsen = RockSinger(name: "Taylor", age: 25)
taylorMomsen.name
taylorMomsen.age
taylorMomsen.sing()


//: [Next](@next)
