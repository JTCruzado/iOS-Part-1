import UIKit

/*
 
Day 8 - Optionals, Protocols, and Extensions
 
*/

print("\n💡 Topic 1 💡\n TEXT \n")

// Base template of class


//-------------------------------------------------------------------------------------------
print("💡 Topic 1A 💡\n TEXT \n")



//-------------------------------------------------------------------------------------------

print("\n🧠 Challenge 1A: 🧠")
print("MORE TEXT👇\n")

/*
 👇 Your new code below 👇
*/


print("\n💡 Topic 1 💡\n Missing Data \n")

// In Swift, there is a datatype that can either hold a value or none at all, the optional:

// here phoneNumberField is holding a value,

var phoneNumberField: Int? = 1234567890

// but the "?" after the String type means that this variable can hold nothing:
phoneNumberField = nil

// nil means nothing. There is no information in this variable

// one way to check for nil values is to use if let statements:

if let numberField = phoneNumberField {
    // if numberField is not nil
    print(numberField)
} else {
    // if numberField is nil
    print("nothing!")
}

// if you know there will always be a value in an optional, you can unwrap it by putting "!" afterwards

phoneNumberField = 5505550550 // there's always a value here because we just set it

print(phoneNumberField) // prints Optional(5505550550) because it's not unwrapped
print(phoneNumberField!) // prints 5505550550 because it's unwrapped now

//-------------------------------------------------------------------------------------------

print("\n🧠 Challenge 1: 🧠")
print("Handle the return value of this function. Use an if let statement, if it returns nothing, say something, else, return the value👇\n")

func randomTrueFalse() -> Int? {
    let randomValue = Int.random(in: 0...2)
    if randomValue == 1{
        return nil
    } else {
        return randomValue
    }
}

/*
 👇 Your new code below 👇
*/

print("\n💡 Topic 2 💡\n Guard \n")

// a guard statement is used to exit a function early if something is nil
// it looks similar to the if let statement:

var emptySignUpForm: [String: String] = [:]
var namedForm: [String: String] = ["name": "Hailey"]

func helloFromForm(form: [String: String]) {
    guard let name = form["name"] else {
        print("no name in form")
        return
    }
    print("hello \(name)!")
}

getName(form: emptySignUpForm) // prints "no name in form"
getName(form: namedForm) // prints "hello Hailey!"

//-------------------------------------------------------------------------------------------

print("\n🧠 Challenge 2: 🧠")
print("Make a function that takes two numbers and prints the sum of their squares. If either of them is missing, break out of the function and print something notifying the user 👇\n")

/*
 👇 Your new code below 👇
*/


print("\n💡 Topic 3 💡\n Nil Coalescing \n")

// nil coalescing is a shorthand form of giving a default value for something if the given one is nil

let userInput: Bool? = nil

// you probably don't want to continue if the user puts nothing, so use nil coalescing to default to false if that happens
// to use it, place the possibly nil value with a ?? and then the default value:
let shouldContinue = userInput ?? false

print(shouldContinue) // prints false

//-------------------------------------------------------------------------------------------

print("\n🧠 Challenge 3: 🧠")
print("👇\n")

/*
 👇 Your new code below 👇
*/


print("\n💡 Topic 4 💡\n Optional Chaining \n")

// optional chaining makes sure that if you try to get the property of something that is nil, it will just return nil and not break your code

struct Person {
    var house: House?
}

struct House {
    var numRooms: Int = 1
}

var jerry = Person()
if let numRooms = jerry.house?.numPeople { // because you have nil here, you can use an if let statement or other forms of Optional code on it
    print("there are \(numRooms) rooms in the house")
} else {
    print("there are an unknown amount of rooms in the house")å
}

print("\n💡 Topic 5 💡\n Function Faliure \n")

// if you want to have a default value in case of a function throwing an error, you can use the "try?" keyword

// ignore this
enum NoEmailError: Error { // makes a specific error for this example
    case noEmail
}

// function to "get" the user email
func getUserEmail(username: String) throws -> String {
    throw NoEmailError.noEmail
}

// if the user's email exists, there will be no error and the email will be printed out
// if there is, the "try?" part will instead return nil and the if let statement handles it, printing "this user's email does not exist" instead
if let email = try? getUserEmail(username: "thealignedmind") {
    print(email)
} else {
    print("this user's email does not exist")
}

print("\n🧠 Challenge 5: 🧠")
print("Use the return value from this function and handle the error with the try? statement and nil coalescing👇\n")

// ignore this
enum NoNameError: Error {
    case noName
}

func getNameFromPhoneNumber(phoneNumber: Int) throws -> String {
    throw NoNameError.noName
}

/*
 👇 Your new code below 👇
*/

print("\n💡 Topic 6 💡\n Protocols \n")

// A protocol is a blueprint for the functionality of whatever conforms to it.
// Protocols don't have any functionality inside them, but they define the types and names of the properties and the name and input types and output types of methods
protocol Vehicle {
    // protocol properties:
    var name: String { get }
    var numPassengers: Int { get set }
    
    // protocol methods:
    func isAtMaxSpeed(currentSpeed: Int) -> Bool
    func travel(distance: Int) -> Void
}

// with this protocol you can make structs/classes that conform to it:

struct Car: Vehicle {
    let name: String
    var numPassengers: Int = 5
    
    func isAtMaxSpeed(currentSpeed: Int) -> Bool {
        return currentSpeed == 100
    }
    
    func travel(distance: Int) {
        print("driving \(distance) miles!")
    }
}


struct Bike: Vehicle {
    let name: String
    var numPassengers: Int = 1
    

    func isAtMaxSpeed(currentSpeed: Int) -> Bool {
        return currentSpeed == 30
    }
    
    func travel(distance: Int) {
        print("biking \(distance) miles!")
    }
}

var toyota = Car(name: "toyota", numPassengers: 5)
toyota.travel(distance: 10) // prints "driving 10 miles!"
print(toyota.isAtMaxSpeed(currentSpeed: 100)) // prints true

var bmx = Bike(name: "bmx", numPassengers: 1)
bmx.travel(distance: 2) // prints "biking 2 miles!"
print(bmx.isAtMaxSpeed(currentSpeed: 25)) // prints false


//------------------------------------------------------------------------------------------- *** up to here (still need to do exercises) ***


print("\n💡 Topic 7 💡\n Extensions \n")


