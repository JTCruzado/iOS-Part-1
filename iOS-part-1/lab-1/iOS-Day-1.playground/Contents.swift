import UIKit

/*
Day 1 Code Along

Working With Simple Data

Data Types
 
int -> whole number
string -> text wrapped in qoutes
boolean -> true or false value
float -> decimal number
*/


print("💡 Topic 1 💡\nCreating a String Variable & Changing Variables\nEdit the code below this line 👇\n")

var Name = "[Edit me]"

print("\(Name) welcome to your first day coding in swift !\n")



print("\n🧠 Challenge 1: 🧠\nChange the existing variable (Age) to contain your age.\nEdit the code below this line👇\n")


var Age = 91

print("I'm \(Name) and I started learning Swift at \(Age) years old")


print("-----------------------------------------------------------------------------------------\n")


print("💡 Topic 2 💡\nCreating a Constant\nEdit the code below this line to contain batmans name (Bruce Wayne)👇")

let batmansName = "Bruce Wayne"

print("\(batmansName) is the batman !")

/*
Changing a consant value will result in an error (ERROR) uncomment below to see error.
Cannot assign to value: 'batmansName' is a 'let' constant
*/

//batmansName = "Dick Grayson"


print("🧠 Challenge 2: 🧠\nCreate a new constant called secondBatmanName and assign it Dick Grayson.")


/*
👇 Your new code below 👇
*/


//--------------------------------------------------------------------------------------------------


print("💡 Topic 3 💡 \nType Inference")

var icecreamFlavor = "[Change Me]"

print("\n\(icecreamFlavor) is my favorite icecream flavor !")


/*
🧠 Challenge 3: 🧠
Create a new set of variables for the icecreams price (float or int), toppings (boolean), scoopCount (int)
*/


/*
👇 Your new code below 👇
*/

print("-------------------------------------------------------------------------------------------")

/*
💡 Topic 4 💡
Type Annotation

*/
var phoneBrand: String = "Change this to your current phone brand e.g google/apple/samsung"

print(type(of: phoneBrand))

var phonePrice: Float = 999.99

print(type(of: phonePrice))


/*
🧠 Challenge 4A: 🧠

 What will be the printed type output of the two variables below ?
*/

var phoneBroken = false

var phoneNumber = 123_555_6789

/*
👇 Your written answer below (use comments)👇
*/



/*
🧠 Challenge 4B: 🧠

Type annotate the correct type for each variable/constant
*/

var idNumber = 717_11_1909

let carPrice = 55590.99

let address = "345 Maiden Ln"

var underWater =  true

/*
👇 Your new code below 👇
*/


/*
💡 Topic 4C 💡
 
Type Safety

*/
// uncomment to see type safety in action.

// var shoeSize: float = true

// 🚨 Error Cannot find type 'float' in scope 🚨

