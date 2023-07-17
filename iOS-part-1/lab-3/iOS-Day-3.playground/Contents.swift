import UIKit

/*
 
Day 3 - Conditionals and Loops
 
*/

print("💡 Topic 1 💡\nIf Statements \n")

// Base template of a conditional
/*
 if someCondition {
    print("I'm now doing something")
 }
*/

//-------------------------------------------------------------------------------------------

print("💡 Topic 1A 💡\nConditional Operators\n")

// Using > or <
// video length in seconds.
let youtubeVideoLength = 720
// battery life remaining in seconds
let batteryLifeRemaining = 600

if batteryLifeRemaining > youtubeVideoLength {
    print("you have enough battery to watch this video")
}

if batteryLifeRemaining < youtubeVideoLength {
    print("you don't have enough battery to watch this video")
}

// Using == (equals to)
let favoriteIcecreamFlavor = "Chocolate"
let icecreamFlavorAvailable = "Vanilla"

if favoriteIcecreamFlavor == icecreamFlavorAvailable {
    print("The creamery has my favorite flavor in stock!")
}

// Using != (not equal to)
let gamerTag = "XxQuickScopexX"

if gamerTag != "Anonymous" {
    print("Your gamerTag is \(gamerTag)")
}


print("\n🧠 Challenge 1A: 🧠")
print("If the hero names match, print MATCH. If not, print NOT A MATCH 👇\n")

let heroName1 = "Iron Man"
let heroName2 = "Thor"

/*
 👇 Your new code below 👇
*/



//-------------------------------------------------------------------------------------------

print("\n💡 Topic 1B 💡\nElse Statements\n")

// Else statements allow you to check for more than conditions within the same statement.
let batteryLife = 19
var batteryColor = "green"

if batteryLife < 20 {
    batteryColor = "red"
    print("your battery is low \(batteryColor)")
} else {
    print("You have full battery \(batteryColor)")
}


print("\n🧠 Challenge 1B: 🧠")
print("If we can afford to buy food, print YES. Else, print NO 👇\n")

let foodPrice = 19
let money = 28

/*
 👇 Your new code below 👇
*/



//-------------------------------------------------------------------------------------------

print("\n💡 Topic 1C 💡\nElse If Statements")

// else if serves as the conditions that are not the default case (else) and not our first condition (if).


print("\n🧠 Challenge 1C: 🧠")
print("Create another condition using else if where newBatteryColor is black when newBatteryLife is 0 👇\n")

// Add onto the code below 👇

let newBatteryLife = 19
var newBatteryColor = "green"

if newBatteryLife < 20 {
    newBatteryColor = "red"
    print("your battery is low \(newBatteryColor)")
} else if newBatteryLife <= 50{
    newBatteryColor = "yellow"
    print("You have half battery \(newBatteryColor)")
} else {
    newBatteryColor = "green"
    print("You have high battery \(newBatteryColor)") 
}


//------------------------------------------------------------------------------------------- ******* ends here please update ********

print("\n💡 Topic 1D 💡\nThe .isEmpty Property")

print("\n🧠 Challenge 1D: 🧠")
print("INSTRUCTION 👇\n")

/*
 👇 Your new code below 👇
*/



//-------------------------------------------------------------------------------------------

print("\n💡 Topic 1E 💡\nLogical Operators AND & OR")

print("\n🧠 Challenge 1E: 🧠")
print("INSTRUCTION 👇\n")

/*
 👇 Your new code below 👇
*/



print("\n-------------------------------------------------------------------------------------------")

print("\n💡 Topic 2 💡\nSwitch Statements \n")

//-------------------------------------------------------------------------------------------

print("💡 Topic 2A 💡\nSwitch vs if-else: Handling Multiple Cases")

print("\n🧠 Challenge 2A: 🧠")
print("INSTRUCTION 👇\n")

/*
 👇 Your new code below 👇
*/



//-------------------------------------------------------------------------------------------

print("\n💡 Topic 2B 💡\nDefault Cases")

print("\n🧠 Challenge 2B: 🧠")
print("INSTRUCTION 👇\n")

/*
 👇 Your new code below 👇
*/



//-------------------------------------------------------------------------------------------

print("\n💡 Topic 2C 💡\nSwitch Statement Rules")

print("\n🧠 Challenge 2C: 🧠")
print("INSTRUCTION 👇\n")

/*
 👇 Your new code below 👇
*/



//-------------------------------------------------------------------------------------------

print("\n💡 Topic 2D 💡\nFallthrough Behavior")

print("\n🧠 Challenge 2D: 🧠")
print("INSTRUCTION 👇\n")

/*
 👇 Your new code below 👇
*/



print("\n-------------------------------------------------------------------------------------------")

print("\n💡 Topic 3 💡\nTernary Operator \n")

//-------------------------------------------------------------------------------------------

print("💡 Topic 3A 💡\nTernary vs if-else: Code Length")

print("\n🧠 Challenge 3A: 🧠")
print("INSTRUCTION 👇\n")

/*
 👇 Your new code below 👇
*/



//-------------------------------------------------------------------------------------------

print("\n💡 Topic 3B 💡\nShorthanding conditions with Ternaries")

print("\n🧠 Challenge 3B: 🧠")
print("INSTRUCTION 👇\n")

/*
 👇 Your new code below 👇
*/

    

print("\n-------------------------------------------------------------------------------------------")

print("💡 Topic 4 💡\nLoops \n")

//-------------------------------------------------------------------------------------------

print("💡 Topic 4A 💡\nRepetitive Tasks")

print("\n🧠 Challenge 4A: 🧠")
print("INSTRUCTION 👇\n")

/*
 👇 Your new code below 👇
*/



//-------------------------------------------------------------------------------------------

print("\n💡 Topic 4B 💡\nFor Loops")

print("\n🧠 Challenge 4B: 🧠")
print("INSTRUCTION 👇\n")

/*
 👇 Your new code below 👇
*/



//-------------------------------------------------------------------------------------------

print("\n💡 Topic 4C 💡\nWhile Loops")

print("\n🧠 Challenge 4C: 🧠")
print("INSTRUCTION 👇\n")

/*
 👇 Your new code below 👇
*/



//-------------------------------------------------------------------------------------------

print("\n💡 Topic 4D 💡\nBreak Statements")

print("\n🧠 Challenge 4D: 🧠")
print("INSTRUCTION 👇\n")

/*
 👇 Your new code below 👇
*/



//-------------------------------------------------------------------------------------------

print("\n💡 Topic 4E 💡\nContinue Statements")

print("\n🧠 Challenge 4E: 🧠")
print("INSTRUCTION 👇\n")

/*
 👇 Your new code below 👇
*/
