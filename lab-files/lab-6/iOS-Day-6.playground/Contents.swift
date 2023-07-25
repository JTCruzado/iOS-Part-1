import UIKit

/*
 
Day 6 - Structs
 
*/


print("💡 Topic 1 💡\nCreating Structs\n")
// Structs are a very powerful tool in Swift because they allow us to create our own complex data types.
// They even allow for their own custom variables and funcntions

// Here's a basic struct
struct VideoGame {
    let genre: String
    let title: String
    let developer: String
    let releaseDate: String
    
    func displayGame() {
        print("Game: \(title)\nGenre: \(genre)\nDeveloper: \(developer)\nRelease Date: \(releaseDate)")
        
    }
}

// lets look at how we would create an object that is an instance of our new VideoGame struct
let re4Remake = VideoGame(genre: "Horror", title: "Resident Evil 4 Remake", developer:"Capcom", releaseDate: "03/23/23")

// we can access each of the properties that we gave to the Videogame type with a dot ".":
print(re4Remake.genre) // prints "Horror"
print(re4Remake.title) // prints "Resident Evil 4 Remake"
print(re4Remake.developer) // prints "Capcom"
print(re4Remake.releaseDate) // prints "3/23/23"


// we can think of an object/instance as a real world struct, which we can actually use --- like calling displayGame to get the link
re4Remake.displayGame() // prints "Game: Resident Evil 4 Remake\nGenre: Horror\nDeveloper: Capcom\nRelease Date: 3/23/23"

//-------------------------------------------------------------------------------------------

print("💡 Topic 2 💡\nWorking with Properties\n")

// Creating a property is simple in Swift Structs, just define whether it is mutatable or not, and define the type

struct Battery {
    var maxBatteryMinutes: Int = 300 // adding an equals adds a default value, but if you want to change it, it has to be mutable
    var currentBatteryPercentage: Int
}

var iPhoneBattery = Battery(maxBatteryMinutes: 50, currentBatteryPercentage: 100)
// static properties can only be accessed
print(iPhoneBattery.maxBatteryMinutes) // prints 50
// trying to change it will throw an error
// iPhoneBattery.maxBatteryMinutes = 100 <-- will throw error: Cannot assign to property: 'maxBatteryMinutes' is a 'let' constant
// but you can both access and change currentBatteryPercentage:
print(iPhoneBattery.currentBatteryPercentage) // prints 100

// changing currentBatteryPercentage:
iPhoneBattery.currentBatteryPercentage = 25
print(iPhoneBattery.currentBatteryPercentage) // prints 25

// methods of a struct that read data dont need anything, but methods that change properties of a struct need to be marked with the keyword mutating:
struct Inventory {
    let inventorySize: Int
    var inventoryItems: [String: Int] = [:]

    // doesn't need mutating keyword (only reading a property)
    func readItems(){
        print(inventoryItems)
    }
    
    // needs mutating keyword (is writing to property)
    mutating func addItem(item: String, amount: Int){
        inventoryItems[item] = amount
    }
}

var minecraftInventory = Inventory(inventorySize: 36)

minecraftInventory.readItems() // prints []
minecraftInventory.addItem(item: "Diamond Sword", amount: 1)
minecraftInventory.addItem(item: "Steak", amount: 64)
minecraftInventory.readItems() // prints ["Diamond Sword" : 1, "Steak": 64]

//-------------------------------------------------------------------------------------------

print("\n💡 Topic 2A 💡\nCompute Values Dynamically\n")

// Dynamic: where the property is computed when it's accessed, meaning that it can changed based on other factors

struct Person {
    // static properties
    let birthYear: Int
    var currentYear: Int
    
    // dynamic property
    var age: Int {
        // when accessed, runs the code in the get part and returns what it gets
        get {
            currentYear - birthYear
        }
        // when the variable is set, it runs this code
        set {
            currentYear = birthYear + newValue
        }
    }
}

// we set the static values when creating the object but the dynamic value is created dynamically
var newPerson = Person(birthYear: 2000, currentYear: 2023)
// we can access it here. Accessing it runs the get part of the code which

// runs the get part of the code
print(newPerson.age) // prints

newPerson.currentYear = 2014
// runs get again, but it changes based on the different properties of the object
print(newPerson.age) // prints 14

// runs the set part inside age and changes currentYear
newPerson.age = 50
print(newPerson.currentYear) // prints 2050

print("\n🧠 Challenge 2A: 🧠")

print("Create a dynamic property for the Battery Struct that computes the current amount of minutes left, based on maxBatteryMinutes and currentBatteryPercentage👇\n")

/*
 👇 Your new code below 👇
*/


print("\n💡 Topic 2B 💡\nAction for Property Changes\n")

// In Swift, we can observe when a property changes and run code based off of the old value and new value
// There are two ways of doing this: willSet and didSet
// willSet runs before the property is set and didSet runs afterwards

struct AppleOrchard {
    
    let maxPlots: Int
    var numFarmers: Int
    
    
    var numAppleTrees =  Int() {
        // newValue is a keyword set by Swift
        willSet {
            print("changing the value to \(newValue)")
        }
        // oldValue is also a keyword
        didSet {
            print("added \(numAppleTrees - oldValue)")
        }
    }
    
}

// willSet and didSet are not called when the struct is initialized
// willSet and didSet will run when an array is changed: append, removed, etc

var SmileyFarms = AppleOrchard(maxPlots: 100, numFarmers: 10, numAppleTrees: 10)

SmileyFarms.numAppleTrees = 50 // runs willSet, changes the value and runs didSet afterwards


print("\n🧠 Challenge 2B: 🧠")

print("Change the Game struct to print a message when a player is joining the game (willSet), and a message when they have joined (didSet) 👇\n")

//struct Game {
//    let runningGames: Int
//    var numPlayers: Int
//
//}

/*
 👇 Your new code below 👇
*/


// code should work when Game struct is created
//var streetFighterOnline = Game(runningGames: 500, numPlayers: 600)
//streetFighterOnline.numPlayers += 10

print("💡 Topic 3 💡\nWorking with Initializers\n")

// Even though every struct has an initializer, Swift silently creates one so we don't have to do the work ourselves
// but sometimes we want to change this initializer, so here we have to create our own:

struct Player {
    let username: String
    let password: String
    var ranking: Int
    
    
    // init takes whatever parameters you want, it doesn't have to match with the ones created before
    // BUT, you have to initialize every variable, so you can set it however you want
    init(username: String, password: String){
        self.username = username
        self.password = password
        // here ranking is not taken as a parameter in the init method, but is set however you want
        self.ranking = Int.random(in: 1...200)
        // self.everything = username + password <-- this code will not work because every property of a struct must be created before the init method
    }
}

//-------------------------------------------------------------------------------------------

print("💡 Topic 4 💡\nAccess Controll\n")

// Swift lets us access the properties of a struct freely, but many times that isn't what we want. Here is where access controll comes in.
// You can define a property as private, which will not allow it to be accessed directly

struct Server {
    private var privateFiles: Array<String> = [] // we don't want any random person changing the private files, so it must be private
    var publicFiles: Array<String> // but the public files don't have to be private, because we don't care about them as much
    
    // because we use the private keyword, Swift requires us to make our own initializer
    init(publicFiles: Array<String>) {
        self.publicFiles = publicFiles
    }
    
    mutating func addPrivateFile(filename: String, password: String) {
        if password == "SuperSecretPassword" {
            privateFiles.append(filename)
            print("Password matches!")
        } else {
            print("Wrong password!")
        }
    }
    
    mutating func printPrivateFiles(password: String) {
        if password == "SuperSecretPassword" {
            print(privateFiles)
        } else {
            print("wrong password")
        }
    }
}

// by making privateFiles private, the only way to access it is through the ways we want them to, so we can run code that does something beforehand or afterwards.
// here, the only way to access the private files is with the correct password

var passwordProtectedServer = Server(publicFiles: ["Minecraft", "Roblox"])

passwordProtectedServer.addPrivateFile(filename: "Bitcoin Secret Key", password: "password123") // does nothing and prints: Wrong password!
passwordProtectedServer.addPrivateFile(filename: "Bitcoin Secret Key", password: "SuperSecretPassword") // this adds the new filename
passwordProtectedServer.printPrivateFiles(password: "SuperSecretPassword")

//-------------------------------------------------------------------------------------------

print("💡 Topic 5 💡\nUnderstanding Static Properties\n")

// sometimes you want to add a property to the struct iteslf
// here you can use the static keyword:

struct HersheysFactory {
    static var avgChocolateBarsOutput = 0
    
    static func improveChocolateBarOutput(output: Int) {
        print("Hershey's bars are now being made at \(avgChocolateBarsOutput) bars per hour")
        avgChocolateBarsOutput = output
    }
}

// this variable is accessable in the HersheysFactory struct, not the individual objects created from the struct
// this means that this variable is global for every instance of HersheysFactory

print(HersheysFactory.avgChocolateBarsOutput) // prints 0
HersheysFactory.improveChocolateBarOutput(output: 100) // prints Hershey's bars are now being made at 100 bars per hour
print(HersheysFactory.avgChocolateBarsOutput) // prints 100

// if you made an instance of HersheysFactory
//var factory1 = HersheysFactory()
// this will not work:
//print(factory1.avgChocolateBarsOutput)


// ** you can also access static variables in the init method:
struct Sheep {
    static var numSheep = 0
    
    init() {
        Self.numSheep += 1
    }
}



print("\n💡 Topic 5A 💡\nMixing Static and non-Static\n")

// if you want to mix Static and non-static variables in the struct, you can use capital 'S' Self for the static variables and lowercase 's' self otherwise

struct Circle {
    static let pi = 3.1415
    let radius: Double
    
    
    // area is pi*radius^2
    func printArea(){
        print("\(Self.pi * self.radius * self.radius)")
    }
}

let unitCircle = Circle(radius: 1)
unitCircle.printArea() // prints 3.1415

print("\n🧠 Challenge 5A: 🧠")

print("Create a struct called Sides that has a static mutable variable called sideLength and a non-static varaible numSides. Then make a function that prints out the perimiter of Sides👇\n")

/*
 👇 Your new code below 👇
*/


print("\n💡 Topic 5B 💡\nUses of Static Properties\n")

// Some uses of static variables are:
// 1. Creating a class that can only be made once:
// 2. Creating a shared constants like pi in the previous example
//   a. Math constants
//   b. Constants that require lots of computation
// 3. Having shared data between classes
//   a. shared counter (amount of players/users)
//   b. isGameOver boolean

print("\n🧠 Challenge 5B: 🧠")

print("Create an InternetUsage struct that has a total amount of internet usage (static). Then for every instance of InternetUsage take in the amount of internet that it is using as a parameter and make sure there is enough internet usage left (in the static variable). If there isn't, give the instance the remaining amount left (could be zero)👇\n")

/*
 👇 Your new code below 👇
*/

