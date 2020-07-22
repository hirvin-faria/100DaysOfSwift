//: [Previous](@previous)

import Foundation

// DAY 12 -  Optionals

var age: Int? = nil



// Unwrapping with if let
var name: String? = nil

if let unwrapped = name {
    print("\(unwrapped.count) letters")             // Caso hava valor na string, a variavel unwrapped está disponivel para uso.
} else {
    print("Missing Name")                           // Caso contrário o if será falso.
}



// Unwrapping with guard let
func greet(_ name: String?) {
    guard let unwrapped = name else {               // guard let realiza a aguarda caso o valor seja nil, cancelando a execução da função, e executando o return.
        print("You didn't provide a name!")         // Executado caso seja nil, para a execução do restante da função.
        return
    }
    
    print("Hello, \(unwrapped)!")                   // Não sera executado caso seja null.
}

greet(nil)
greet("Hirvin")





// Force Unwrapping
let str = "5"
let num = Int(str)                                  // Converte a string em um int, mas num passa a ser um opcional.
let num2 = Int(str)!                                // Para forçar o unwrapping do opcional use !, isso fara com que num deixe de ser um opcional.
                                                    // Use apenas quando tiver certeza dos dados que estao sendo passado.



// Implicitly unwrapped
let ageImplicity: Int! = nil                        // Torna a variavel nil de forma implicita
                                                    // Isso permite que a variavel seja usada sem um unwrapping, mas caso seja nil ocorrerá um crash no código.




// Nil coalescing
func username(for id: Int) -> String? {
    if id == 1 {
        return "Taylor Swift"
    } else {
        return nil
    }
}

let user = username(for: 15) ?? "Anonymous"         // o operador de coalescing ?? o valor do opcional mas caso o opcional seja nil retorna o valor default



// Optional chaining
let names = ["John", "Paul", "George", "Ringo"]     //
let beatle = names.first?.uppercased()              // Ira executar o uppercase caso firts não seja nil neste caso, usar ? provaca uma verficação nil antes de executar as propriedade subsequentes

let songs: [String]? = [String]()
let music = songs?.first?.uppercased()              // Ira retornar nil já que o array esta vazio



// Optional try

enum PasswordError: Error {
    case obvious
}

func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }

    return true
}


// try?
if let result = try? checkPassword("password") {    // Retornará nil caso ocorra um erro
    print("Result was \(result)")
} else {
    print("D'oh.")
}


try! checkPassword("sekrit")                        // try! e implicito, usado sempre que se tem certeza que a função não irá falhar! Caso ocorra uma falhar a aplicação ira falhar.
print("OK!")




// Failable initializers
struct Person {
    var id: String

    init?(id: String) {                             // Declara um inicializador que ira verificar se o valor é nil, para assim previnir falhas
        if id.count == 9 {
            self.id = id
        } else {
            return nil
        }
    }
}



// Typecasting
class Animal { }
class Fish: Animal { }

class Dog: Animal {
    func makeNoise() {
        print("Woof!")
    }
}

let pets = [Fish(), Dog(), Fish(), Dog()]

for pet in pets {
    if let dog = pet as? Dog {                  // as? fará verifica se os itens de pet são da classe Dog para poder chamar o metodo dor.makeNoise. Caso contrário retorna nil e o metodo não é executado, evitando que a aplicação falhe.
        dog.makeNoise()
    }
}
//: [Next](@next)
