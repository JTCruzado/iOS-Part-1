import UIKit

/*
Day 1 Code Along

Working With Simple Data

Data Types
 
Int -> whole number
String -> text wrapped in qoutes
Bool -> true or false value
Float -> decimal number
*/

print("💡 Topic 1 💡\nCreating a String Variable & Changing Variables\nEdit the code below this line to include your name 👇\n")

var name = "[EDIT ME]"

print("> \(name) welcome to your first day coding in swift !\n")


print("\n🧠 Challenge 1: 🧠\nChange the existing variable (Age) to contain your age.\nEdit the code below this line 👇\n")

var age = 91

print("> I'm \(name) and I started learning Swift at \(age) years old.\n")


print("-----------------------------------------------------------------------------------------\n")


print("💡 Topic 2 💡\nCreating a Constant\nEdit the code below this line to contain Batman's name (Bruce Wayne) 👇\n")

let batmansName = "[EDIT ME]"

print("> \(batmansName) is the batman !\n")


/*
Changing a consant value will result in an error (ERROR)
Uncomment (remove //) line 48 below to see the error.
 
Cannot assign to value: 'batmansName' is a 'let' constant
*/

//batmansName = "Dick Grayson"


print("\n🧠 Challenge 2: 🧠\nCreate a new constant called secondBatmanName, assign it \"Dick Grayson\", and print it.\nEdit the code below this line 👇\n")

/*
👇 Your new code below 👇
*/



print("-------------------------------------------------------------------------------------------")


print("\n💡 Topic 3 💡 \nType Inference\nEdit the code below this line to put your favorite ice cream flavor 👇\n")

var iceCreamFlavor = "[EDIT ME]"

print("> \(iceCreamFlavor) is my favorite icecream flavor !\n\n")


print("🧠 Challenge 3: 🧠")

print("Create a new set of variables for the iceCream's price (float or int), toppings (boolean), scoopCount (int)\nEdit the code below this line 👇\n")

/*
👇 Your new code below 👇
*/



print("-------------------------------------------------------------------------------------------")


print("\n💡 Topic 4 💡 \nType Annotation\nEdit the code below this line 👇\n")

var phoneBrand: String = "[EDIT ME] Change this to your current phone brand e.g Google/Apple/Samsung"

print(type(of: phoneBrand))

var phonePrice: Float = 999.99

print(type(of: phonePrice))


print("\n🧠 Challenge 4A: 🧠 \nWhat will be the printed type output of the two variables below ?\nEdit the code below this line 👇\n")

var phoneBroken = false

var phoneNumber = 123_555_6789

/*
👇 Your written answer below (use comments)👇
*/



print("\n🧠 Challenge 4B: 🧠 \nType annotate the correct type for each variable/constant ?\nEdit the code below this line 👇\n")

var idNumber = 717_11_1909

let carPrice = 55590.99

let address = "345 Maiden Ln"

var underWater =  true

/*
👇 Your new code below 👇
*/



print("\n💡 Topic 4C 💡 \nType Safety\nUncomment the code to see type safety in action 👇\n")

// var shoeSize: float = true

// 🚨 Error Cannot find type 'float' in scope 🚨

