import UIKit

/*
 
Day 4 - Functions
 
*/

print("💡 Topic 1 💡\nReusing Code with Functions\n")

// This set of greetings seems short at just 3 lines. But what if we wanted to use them multiple times?
print("Hello Engineer")
print("Welcome to iOS Club")
print("From: Jeremy, Tom, Deyby & Teddy")

//-------------------------------------------------------------------------------------------

print("\n💡 Topic 1A 💡\nDefining Functions\n")

func greet() {
    print("Hello Engineer")
    print("Welcome to iOS Club")
    print("From: Jeremy, Tom, Deyby & Teddy")
}

// Calls the greet function
greet() // Greets 1st engineer
greet() // Greets 2nd engineer
greet() // Greets 3rd engineer


print("\n🧠 Challenge 1A: 🧠")
print("Create a Farewell Function and Call It👇\n")

/*
 👇 Your new code below 👇
*/



print("\n-------------------------------------------------------------------------------------------")

print("\n💡 Topic 2 💡\nReturn Statements \n")

// Here we’re calling the sorted method inside of the print function.
let letters: Array<Character> = ["Z", "L", "A", "P", "K"]
print("Here are some letters... \(letters)")
print("Now here are some letters, but sorted... \(letters.sorted())\n")

// The arrow (-> Int) defines the return type of the function
// In other words, this function should only return an Int

func addFourAndFive() -> Int {
    return 4 + 5
}

print(addFourAndFive()) // Prints out 9


print("\n🧠 Challenge 2: 🧠")
print("Create a Subtraction Function for the Numbers 7 and 2 👇\n")


/*
 👇 Your new code below 👇
*/



print("\n-------------------------------------------------------------------------------------------")

print("\n💡 Topic 3 💡\nParameters \n")

// Here, we define 2 parameters, a and b, and define their data type
// For the purpose of an add function, a and b should each be an Int

func add(a: Int, b: Int) -> Int {
    return a + b
}

let sum: Int = add(a: 27, b: 1)
print(sum) // Prints 27 + 1, or 28

//-------------------------------------------------------------------------------------------

print("\n💡 Topic 3A 💡\nAdvanced Greeting Function")

func greet(people: [String]) -> [String: Int] {
  // Dictionary holding audience info
  var peopleInfo: [String: Int] = [
    "Coach Count": 0,
    "Student Count": 0,
    "Total": people.count
  ]

  // Loop for going through the people array
  for person in people {

    // If statements for keeping counts of students/coaches and for different greetings
    if (person.hasSuffix("Tom")) {
      print("Welcome, Coach \(person), how are you?")
      peopleInfo["Coach Count"]! += 1
    }

    else if (person.hasSuffix("Jeremy")) {
      print("Welcome, Coach \(person), what's happening?")
      peopleInfo["Coach Count"]! += 1
    }

    else {
      print("Welcome, \(person). Are you ready?")
      peopleInfo["Student Count"]! += 1
    }
  }

  // Returning the peopleInfo dictionary
  return peopleInfo
}


print("\n🧠 Challenge 3A: 🧠")
print("INSTRUCTION 👇\n")


/*
 👇 Your new code below 👇
*/



print("\n-------------------------------------------------------------------------------------------")
// ------------------------------------------------------------------------------------------ TEMPLATE BELOW
//-------------------------------------------------------------------------------------------

print("💡 Topic 1A 💡\nNAME")


print("\n🧠 Challenge 1A: 🧠")
print("INSTRUCTION 👇\n")


/*
 👇 Your new code below 👇
*/
