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

print("💡 Topic 1 💡 \nArrays\nEdit the code below 👇\n")

// Four Variables
var burger: Double = 3.99
var fries: Double = 1.99
var drink: Double = 0.99
let tax: Double = 0.08875

// One array
let burgerMenu = [3.99, 1.99, 0.99, 0.08875]

// Edit the array below to contain these Ints
var num1: Int = 1
var num2: Int = 2
var num3: Int = 3

let numbers = ["EDIT ME"]
print(numbers)


print("\n💡 Topic 1A 💡 \nAppend Method")

// EDIT THE CODE BELOW 👇
// Can you find the bug in the code below? (Uncomment it)
// burgerMenu.append("Milk Shake")

// Can you find the bug in the code below? (Uncomment it)
// burgerMenu.append(4.99)

/*
 In Swift, we have variables and constants.
 burgerMenu is a constant, but we can change it to a variable to allow for modifications.
*/

var burgerMenu2 = [3.99, 1.99, 0.99, 0.08875]
burgerMenu2.append(4.99)

print("\n🧠 Challenge 1A: 🧠")
print("Append 2.99 to burgerMenu2 👇\n")

/*
 👇 Your new code below 👇
*/



print(burgerMenu2)


print("\n💡 Topic 1B 💡 \nArray Indexing\n")

// The first item in an array has an index of 0
print(burgerMenu2[0])

print("\n🧠 Challenge 1B: 🧠")
print("Print the third item in burgerMenu2 👇")

/*
 👇 Your new code below 👇
*/



// It should print 0.99


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
print("Print the fourth item from healthyMenu and its price 👇")

/*
 👇 Your new code below 👇
*/



// Output: Water $0.99


print("\n-------------------------------------------------------------------------------------------")

print("\n💡 Topic 2 💡 \nDictionaries")

// Create a dictionary with String keys and Double values
let burgerShackHealthMenu: [String: Double] = [
    "Chicken Burger": 4.99,
    "Fish Burger": 3.99,
    "Salad": 4.49,
    "Water": 0.99
]

// Create a dictionary that describes a person
let member1: [String: String] = [
    "firstName": "Tom",
    "lastName": "Burgin",
    "role": "Coach",
    "specialty": "iOS Development",
    "workplace": "Google"
]


