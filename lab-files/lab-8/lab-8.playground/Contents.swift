/*
 
Day 8 - Optionals, Protocols, and Extensions
 
*/


print("\n💡 Topic 1 💡\n Missing Data \n")

// In Swift, there is a datatype that can either hold a value or none at all, the optional:

// here numCookieOrders is holding a value,

var numCookieOrders: Int? = 15

// but the "?" after the String type means that this variable can hold nothing:
numCookieOrders = nil

// nil means nothing. There is no information in this variable

// one way to check for nil values is to use if let statements:

if let cookieOrders = numCookieOrders {
    // if numberField is not nil
    print(cookieOrders)
} else {
    // if numberField is nil
    print("no cookie orders!")
}

// if you know there will always be a value in an optional, you can unwrap it by putting "!" afterwards

numCookieOrders = 5505550550 // there's always a value here because we just set it

print(numCookieOrders) // prints Optional(5505550550) because it's not unwrapped
print(numCookieOrders!) // prints 5505550550 because it's unwrapped now

//-------------------------------------------------------------------------------------------

print("\n🧠 Challenge 1: 🧠")
print("Handle the return value of this function. Use an if let statement, if it returns nothing, say something, else, return the value👇\n")

func wantsCookies() -> Int? {
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
var namedForm: [String: String] = ["name": "Aiden", "favoriteSweet": "Cookies"]

func getFavoriteDesert(form: [String: String]) {
    guard let desert = form["favoriteSweet"] else {
        print("data missing")
        return
    }
    guard let name = form["name"] else {
        print("data missing")
        return
    }
    print("\(name)'s favorite desert is \(desert)")
}

getFavoriteDesert(form: emptySignUpForm) // prints "no name in form"
getFavoriteDesert(form: namedForm) // prints "Aiden's favorite desert is Cookies!"

//-------------------------------------------------------------------------------------------

print("\n🧠 Challenge 2: 🧠")
print("Print the sum of the sugarGrams and the flour grams in this function using the guard function.👇\n")

// complete the function
func bakePastry(sugarGrams: Int?, flourGrams: Int?) {
    // Make sure both sugarGrams and flourGrams are not nil
    // If either sugarGrams or flourGrams is nil, print something to the user
}

print("\n💡 Topic 3 💡\n Nil Coalescing \n")

// nil coalescing is a shorthand form of giving a default value for something if the given one is nil

let userInput: Bool? = nil

// you probably don't want to continue if the user puts nothing, so use nil coalescing to default to false if that happens
// to use it, place the possibly nil value with a ?? and then the default value:
let wantsMoreCake = userInput ?? false

print(wantsMoreCake) // prints false

//-------------------------------------------------------------------------------------------

print("\n🧠 Challenge 3: 🧠")
print(" the randomCookie function returns either a random cookie or nil, use nil coalescing to make sure to always print a value (not print nil) 👇\n")

func randomCookie() -> String? {
    let cookies = ["Oreo", "Chips Ahoy", "Milano", "Fudge Stripes", "Chocolate Chip"]
    let randomNum = Int.random(in: -1...(cookies.count-1))
    if randomNum == -1 {
        return nil
    } else {
        return cookies[randomNum]
    }
}

/*
 👇 Your new code below 👇
*/


print("\n💡 Topic 4 💡\n Optional Chaining \n")

// optional chaining makes sure that if you try to get the property of something that is nil, it will just return nil and not break your code

struct Pastry {
    let name: String
    var bakery: Bakery?
}

struct Bakery {
    var numBakers: Int = 10
}

var oreo = Pastry(name: "Oreo")
if let numBakers = oreo.bakery?.numBakers { // because you have nil here, you can use an if let statement or other forms of Optional code on it
    print("there are \(numBakers) rooms in the bakery")
} else {
    print("there are an unknown amount of bakers where the cookie was made")
}

//-------------------------------------------------------------------------------------------

print("\n💡 Topic 5 💡\n Function Faliure \n")

// if you want to have a default value in case of a function throwing an error, you can use the "try?" keyword

// ignore this
enum NoIngredientError: Error { // makes a specific error for this example
    case noIngredient
}

// function to "get" the ingredient
func getIngredient(name: String) throws -> String {
    throw NoIngredientError.noIngredient
}

// if the ingredient exists, there will be no error and the ingredient will be printed out
// if there is, the "try?" part will instead return nil and the if let statement handles it, printing "this ingredient does not exist" instead
if let ingredient = try? getIngredient(name: "sugar") {
    print(ingredient)
} else {
    print("this ingredient does not exist")
}

print("\n🧠 Challenge 5: 🧠")
print("Use the return value from this function and handle the error with the try? statement and nil coalescing👇\n")

// ignore this
enum NoPastryError: Error {
    case noPastry
}

func getPastryFromIngredient(ingredient: String) throws -> String {
    throw NoPastryError.noPastry
}

/*
 👇 Your new code below 👇
*/

print("\n💡 Topic 6 💡\n Protocols \n")

// A protocol is a blueprint for the functionality of whatever conforms to it.
// Protocols don't have any functionality inside them, but they define the types and names of the properties and the name and input types and output types of methods
protocol PastryProtocol {
    var name: String { get }
    var numServings: Int { get set }
    
    func isBaked() -> Bool
    mutating func consume() -> Void
}

struct Cake: PastryProtocol {
    let name: String
    var numServings: Int = 8
    
    func isBaked() -> Bool {
        return true
    }
    
    mutating func consume() {
        print("Eating a slice of \(name)!")
        numServings -= 1
    }
}

struct Doughnut: PastryProtocol {
    let name: String
    var numServings: Int = 1
    
    func isBaked() -> Bool {
        return false
    }
    
    mutating func consume() {
        print("Eating \(name)!")
        numServings -= 1
    }
    
    func glaze() {
        print("Applying glaze to \(name)!")
    }
}


var chocolateCake = Cake(name: "Chocolate Cake", numServings: 8)
chocolateCake.consume() // prints "Eating a slice of Chocolate Cake!"
print(chocolateCake.isBaked()) // prints true

var glazedDoughnut = Doughnut(name: "Glazed Doughnut", numServings: 1)
glazedDoughnut.consume() // prints "Eating Glazed Doughnut!"
print(glazedDoughnut.isBaked()) // prints false

// protocols are useful for many reasons, but the two main ones are:
// they enforce consistency, which is usefull for clean code
// functions can accept the protocol instead of a specific class or struct, making them more useful **

//-------------------------------------------------------------------------------------------

print("\n🧠 Challenge 6: 🧠")
print(" make a struct that follows the given protocol👇\n")

protocol Desert {
    var name: String { get }
    var numServings: Int { get set }
    var ingredients: [String] { get set }
    
    mutating func addIngredient(ingredient: String)
    mutating func removeIngredient(ingredient: String)
}


/*
 👇 Your new code below 👇
*/

print("\n💡 Topic 7 💡\n Extensions \n")

// Extensions are useful when you want to add functionality to prexisting classes and structs

extension String {
    func isValidPastryName() -> Bool {
        let validPastryNames: Set = ["donut", "croissant", "muffin", "cookie", "cake"]
        return validPastryNames.contains(self)
    }
}

print("donut".isValidPastryName()) // prints false
print("apple".isValidPastryName()) // prints true


print("\n🧠 Challenge 6: 🧠")
print("Extend the dictionary class. When given a dictionary with a key value pair of the abundance of an ingredient as the key and the value as the ingredient name, print out the ingredient list ordere by abundance (descending).👇\n")

let ingredients = [
    30:"flower",
    3:"eggs",
    15:"sugar",
    2:"water",
    6:"frosting"
]

/*
 👇 Your new code below 👇
*/
