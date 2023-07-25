import UIKit

/*
 
Day 7 - Classes
 
*/

print("Coding Warmup:\n\nYour challenge is to create a program using structs to represent various superheroes and their secret identities. Each superhero should have a name, alter ego (secret identity), and a superpower. You will then implement a method within the struct to introduce each superhero, showcasing their unique characteristics.")
/*
 👇 Your new code below 👇
*/

print("\n💡 Topic 1 💡\n Creating Classes \n")

// Base template of class
/*
 if someCondition {
    print("I'm now doing something")
 }
*/

//-------------------------------------------------------------------------------------------
print("💡 Topic 1A 💡\n Creating a class \n")

// Class definition
class House {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func greet() {
        print("Welcome to \(name)!")
    }
}

// Object creation
let gryffindor = House(name: "Gryffindor")

// Object usage
gryffindor.greet()


//-------------------------------------------------------------------------------------------

print("\n🧠 Challenge 1A: 🧠")
print("Create a Wizard class in that has a name and house parameter in its initializer. Additionally, the class should have a method called castSpellLumos that will print a message indicating the wizard's name and the Lumos spell being cast.👇\n")

/*
 👇 Your new code below 👇
*/


//-------------------------------------------------------------------------------------------


print("💡 Topic 1B 💡\n Class Inheritance \n")

// Base class: Wizard
class Wizard {
    var name: String
    var house: String
    
    init(name: String, house: String) {
        self.name = name
        self.house = house
    }
    
    func castSpell(spell: String) {
        print("\(name) casts \(spell).")
    }
}

// Subclass: Gryffindor
class Gryffindor: Wizard {
    var braveryLevel: Int
    
    init(name: String, braveryLevel: Int) {
        self.braveryLevel = braveryLevel
        super.init(name: name, house: "Gryffindor")
    }
    
    func useSword() {
        print("\(name) uses a Gryffindor sword to defend against dark forces.")
    }
}

// Subclass: Slytherin
class Slytherin: Wizard {
    var cunningLevel: Int
    
    init(name: String, cunningLevel: Int) {
        self.cunningLevel = cunningLevel
        super.init(name: name, house: "Slytherin")
    }
    
    func useDeception() {
        print("\(name) uses cunning strategies and deception to achieve their goals.")
    }
}

// Example usage
let harry = Gryffindor(name: "Harry Potter", braveryLevel: 9)
let draco = Slytherin(name: "Draco Malfoy", cunningLevel: 8)

harry.castSpell(spell: "Expelliarmus") // Output: "Harry Potter casts Expelliarmus."
harry.useSword() // Output: "Harry Potter uses a Gryffindor sword to defend against dark forces."

draco.castSpell(spell: "Imperio") // Output: "Draco Malfoy casts Imperio."
draco.useDeception() // Output: "Draco Malfoy uses cunning strategies and deception to achieve their goals."

//-------------------------------------------------------------------------------------------

print("\n🧠 Challenge 1B 🧠\n Class Inheritance \n")
print("\nIn this challenge, you'll be using class inheritance to create spells specific to each Hogwarts House. We already have a base class Spell representing magical spells. You will create subclasses for each Hogwarts House to add spells unique to each house. Use the example to help you with this challenge.")

print("\nChallenge Reference Code")
// Base class: HogwartsHouse
class HogwartsHouse {
    var name: String
    var motto: String
    var founder: String
    var loyalTraits: [String]
    
    init(name: String, motto: String, founder: String, loyalTraits: [String]) {
        self.name = name
        self.motto = motto
        self.founder = founder
        self.loyalTraits = loyalTraits
    }
    
    func introduce() {
        print("Welcome to House \(name)! Our motto is: '\(motto)'.")
        print("Our house was founded by \(founder).")
        print("We are known for these loyal traits: \(loyalTraits.joined(separator: ", ")).")
    }
}

// Subclass: Hufflepuff
class Hufflepuff: HogwartsHouse {
    init() {
        let founder = "Helga Hufflepuff"
        let loyalTraits = ["Loyalty", "Friendship", "Fair Play"]
        super.init(name: "Hufflepuff", motto: "Those patient Hufflepuffs are true, and unafraid of toil.", founder: founder, loyalTraits: loyalTraits)
    }
}

print("\nChallenge Starter Code")
// Subclass: Spell
class Spell {
    var name: String
    var description: String
    
    init(name: String, description: String) {
        self.name = name
        self.description = description
    }
    
    func cast() {
        print("Casting \(name) spell: \(description)")
    }
}

// Subclass: Ravenclaw Spell
class RavenclawSpell: Spell {
    init() {
        super.init(name: "Alohomora", description: "A spell to unlock doors and objects.")
    }
}
/*
 👇 Your new code below 👇
*/

print("💡 Topic 2A 💡\n \n")
