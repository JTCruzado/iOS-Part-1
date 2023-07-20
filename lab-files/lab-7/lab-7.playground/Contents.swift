import UIKit

/*
 
Day 7 - Classes
 
*/

print("💡 Topic 1 💡\n Creating Classes \n")

// Base template of class
/*
 if someCondition {
    print("I'm now doing something")
 }
*/

//-------------------------------------------------------------------------------------------

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

