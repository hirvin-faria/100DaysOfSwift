//: [Previous](@previous)

import Foundation

//DAY 9


//Inicializadores
//Ao usar um inicializador personalizado, o inicializador padrao do swift é desabilitado
struct User {
    var username: String
    
    init(){
        username = "Anonimo"
        print("Novo usuário criado")
    }
}

var user = User()
user.username = "Hirvin Faria"

// Para manter o inicializador padrao do swift
struct Employee {
    var name: String
    var yearsActive = 0
}

extension Employee {
    init() {
        self.name = "Anonymous"
        print("Creating an anonymous employee…")
    }
}

// creating a named employee now works
let roslin = Employee(name: "Laura Roslin")

// as does creating an anonymous employee
let anon = Employee()



// Referencias
struct User2 {
    var name: String
    
    init(name: String){
        self.name = name
        print("\(name) seu novo foi usuário criado")
    }
}



// Lazy Properties
// Swift ira crias a propriedade apenas quando nescessario caso seja declarada como lazy
struct FamilyTree {
    init() {
        print("Creating family tree!")
    }
}

struct Person {
    var name: String
    lazy var familyTree = FamilyTree()

    init(name: String) {
        self.name = name
    }
}

var ed = Person(name: "Ed")


// Static Methods and Properties
struct Student {
    static var classSize = 0
    var name: String

    init(name: String) {
        self.name = name
        Student.classSize += 1
    }
}

print(Student.classSize)


// Access control
struct PersonPrivate {
    private var id: String

    init(id: String) {
        self.id = id
    }

    func identify() -> String {
        return "My social security number is \(id)"
    }
}

let person = PersonPrivate(id: "12345")
person.identify()

//: [Next](@next)
