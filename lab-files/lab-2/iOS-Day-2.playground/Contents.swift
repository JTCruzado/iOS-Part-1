import UIKit

/*
Day 2 Code Along
 
Working with Complex Data
 
Data Types
 Array       -> store ordered data in a single place
 Dictionary  -> joins a key and value
 Sets        -> arrays without indices and duplicates
 Enums       -> set of default values
 
*/

print("💡 Topic 1 💡 \nArrays\n")

// Four Variables
var burger: Double = 3.99
var fries: Double = 1.99
var drink: Double = 0.99
let tax: Double = 0.08875

// One array
let burgerOrder = [3.99, 1.99, 0.99, 0.08875]

// Edit the array below to contain these Ints 👇
var num1: Int = 1
var num2: Int = 2
var num3: Int = 3

let numbers = ["EDIT ME"]
print(numbers)

//-------------------------------------------------------------------------------------------

print("\n💡 Topic 1A 💡 \nAppend Method")

// EDIT THE CODE BELOW 👇
// Can you find the bug in the code below? (Uncomment it)
// burgerOrder.append("Milk Shake")

// Can you find the bug in the code below? (Uncomment it)
// burgerOrder.append(4.99)

/*
 In Swift, we have variables and constants.
 burgerOrder is a constant, but we can change it to a variable to allow for modifications.
*/

var burgerOrder2 = [3.99, 1.99, 0.99, 0.08875]
burgerOrder2.append(4.99)


print("\n🧠 Challenge 1A: 🧠")
print("Append 2.99 to burgerOrder2 👇\n")

/*
 👇 Your new code below 👇
*/



print(burgerOrder2)

//-------------------------------------------------------------------------------------------

print("\n💡 Topic 1B 💡 \nArray Indexing\n")

// The first item in an array has an index of 0
print(burgerOrder2[0])


print("\n🧠 Challenge 1B: 🧠")
print("Print the third item in burgerOrder2 👇\n")

/*
 👇 Your new code below 👇
*/



// It should print 0.99

//-------------------------------------------------------------------------------------------

print("\n💡 Topic 1C 💡 \nUpdating a Fast Food Menu")

// Healthy Menu Items
// Creates an empty string array
var healthyMenu = Array<String>()

healthyMenu.append("chicken burger")
healthyMenu.append("fish burger")
healthyMenu.append("salad")
healthyMenu.append("water")

healthyMenu[2] // Grabs the third item: salad

// Healthy Menu Prices
var healthMenuPrices = [Double]()

healthMenuPrices.append(4.99)
healthMenuPrices.append(3.99)
healthMenuPrices.append(4.49)
healthMenuPrices.append(0.99)

healthMenuPrices[1] // Grabs the second price


print("\n🧠 Challenge 1C: 🧠")
print("Print the fourth item from healthyMenu and its price 👇\n")

/*
 👇 Your new code below 👇
*/



// Output: Water $0.99


print("\n-------------------------------------------------------------------------------------------")

print("\n💡 Topic 2 💡 \nDictionaries")

// Creates a dictionary with String keys and Double values
let burgerShackHealthMenu: [String: Double] = [
    "Chicken Burger": 4.99,
    "Fish Burger": 3.99,
    "Salad": 4.49,
    "Water": 0.99
]

// Creates a dictionary that describes a person
let member1: [String: String] = [
    "firstName": "Tom",
    "lastName": "Burgin",
    "role": "Coach",
    "specialty": "iOS Development",
    "workplace": "Google"
]

//-------------------------------------------------------------------------------------------

print("\n💡 Topic 2A 💡 \nAccessing Dictionary Keys / Values\n")

// Gets all the keys of the dictionary
let keys = burgerShackHealthMenu.keys
// Gets all the values of the dictionary
let values = burgerShackHealthMenu.values
// Prints the keys
print(keys)
// Prints the values
print(values)

// Gets specific keys of a dictionary, selects the first key
print(burgerShackHealthMenu["Chicken Burger", default: 4.99])

// Get the specific value of a key in a dictionary using: dictionary["key"]

// Adjusts the price of Chicken Burger
// burgerShackHealthMenu["Chicken Burger"] = 5.99


print("\n🧠 Challenge 2A: 🧠")
print("Print member1's first and last name 👇\n")

/*
 👇 Your new code below 👇
*/



//-------------------------------------------------------------------------------------------

print("\n💡 Topic 2B 💡 \nDefault Values\n")

// There may be times where we have a dictionary and we have keys, but we may not necessarily have values yet.
// So by having a default value, we have a fallback value in case data is missing. This idea of fallback/optional data will be covered at a later time when we discuss optionals.
 
// So if we had no price specified for the Chicken Burger, we have a fallback price of 4.99…
print(burgerShackHealthMenu["Chicken Burger", default: 4.99])


print("\n-------------------------------------------------------------------------------------------")

print("\n💡 Topic 3 💡 \nSets")

// Sets are pretty much just like arrays, with a few key differences: they don’t store unordered data, so no indices.
// The other key difference is that they don’t allow for duplicates.

//-------------------------------------------------------------------------------------------

print("\n💡 Topic 3A 💡 \nDeclaring Sets")

// Declaring a Set of Programming Languages
var languageSet: Set<String> = Set(["Swift", "Python", "Java", "R"])

// Declaring an Array of Programming Languages
var languageArray: Array<String> = ["C++", "Go", "Rust", "Kotlin"]


print("\n🧠 Challenge 3A: 🧠")
print("Declare a Set of Colors in the Rainbow 👇\n")

/*
 👇 Your new code below 👇
*/



//-------------------------------------------------------------------------------------------

print("\n💡 Topic 3B 💡 \nInsert Method\n")

// Creating a new set of languages
var languageSet2: Set<String> = Set<String>()

// Inserting languages into the language set
languageSet2.insert("JavaScript")
languageSet2.insert("C")
languageSet2.insert("Julia")
languageSet2.insert("Carbon")

// Prints set of elements in some random order
print(languageSet2)


print("\n🧠 Challenge 3B: 🧠")
print("Insert another language into languageSet2 👇\n")

/*
 👇 Your new code below 👇
*/



//-------------------------------------------------------------------------------------------

print("\n💡 Topic 3C 💡 \nRemove Method")

// Removing Julia from the set
languageSet2.remove("Julia") // 1st call removes "Julia"
languageSet2.remove("Julia") // 2nd call returns nil


print("\n🧠 Challenge 3C: 🧠")
print("Remove C from languageSet2 👇\n")

/*
 👇 Your new code below 👇
*/



//-------------------------------------------------------------------------------------------

print("\n💡 Topic 3D 💡 \nArray Methods on Sets\n")

// Check if the language Set contains the Java language
print(languageSet.contains("Java")) // false

// Returns a sorted array of the elements within the Set
print(languageSet.sorted()) // ["C", "Carbon", "JavaScript", "Julia"]

// .count tells us the amount of items within a set
print(languageSet.count) // 4
 

print("\n🧠 Challenge 3D: 🧠")
print("Call These Methods on Your Rainbow Color Set 👇\n")

/*
 👇 Your new code below 👇
*/



print("\n-------------------------------------------------------------------------------------------")

print("\n💡 Topic 4 💡 \nEnums")

// An enum, or enumeration, is a set of named values we can create and use within our Swift code.
// You can think of enums as a collection of default values, or presets, so to speak.

// A good scenario for enum usage would be for limiting user input.
// Maybe you have a program where you only allow certain words as input.
// You can then use an enum to have a set limit of words that can be used.

//-------------------------------------------------------------------------------------------

print("\n💡 Topic 4A 💡 \nCreating Enums")

// Enum for days of the week
enum Weekday {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
}

// Shorthand for the above enum
enum Weekdays {
    case monday, tuesday, wednesday, thursday, friday
}


print("\n🧠 Challenge 4A: 🧠")
print("Create an Enum for Days of the Weekend 👇\n")

/*
 👇 Your new code below 👇
*/



//-------------------------------------------------------------------------------------------

print("\n💡 Topic 4B 💡 \nUsing Enums\n")

// Keeps track of set day for a team meeting
var selectedDay = "tuesday"

// What if we put March instead of a day of the week? -> selectedDay = "March"
// This is a prime example of why we may want to use an enum; an example of why we should sometimes limit user input or changes.
// We will redo the logic but with strict day rules

// Weekday Enum
enum Weekday2 {
    case monday, tuesday, wednesday, thursday, friday
}

// Day for team meeting
var selectedDay2 = Weekday2.tuesday

// Changes weekday meeting day
selectedDay2 = Weekday2.thursday

// We don’t always have to write “Weekday” every time we want to change the variable value
// Instead, we could just write “.value”, where value is a value within an enum like the following
selectedDay2 = .friday

// Meeting day changes again
selectedDay2 = .monday


print("🧠 Challenge 4B: 🧠")
print("Change the meeting day to Wednesday 👇\n")

/*
 👇 Your new code below 👇
*/


