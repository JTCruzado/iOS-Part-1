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
print("Create a Farewell Function and Call It 3x👇\n")

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



//-------------------------------------------------------------------------------------------

print("\n💡 Topic 2A 💡\nReturn Multiple Values \n")

// We can return multiple values from this function such as the min and the max
func calculateStatistics(scores: [Int]) -> (min: Int, max: Int, average: Double) {
    var minScore = scores[0]
    var maxScore = scores[0]
    var totalScore = 0

    for score in scores {
        if score < minScore {
            minScore = score
        }
        if score > maxScore {
            maxScore = score
        }
        totalScore += score
    }

    let averageScore = Double(totalScore) / Double(scores.count)

    return (minScore, maxScore, averageScore)
}

let scores = [85, 90, 78, 95, 88]
let result = calculateStatistics(scores: scores)
print("Minimum score: \(result.min)")
print("Maximum score: \(result.max)")
print("Average score: \(result.average)")


print("\n🧠 Challenge 2A: 🧠")
print("Write a function called analyzeNumbers that takes an array of integers as input and returns a tuple containing the count of even numbers and the count of odd numbers in the array. 👇\n")

// Example:
// let numbers = [3, 8, 5, 12, 7, 6]
// let result = analyzeNumbers(numbers: numbers)
// print("Even count: \(result.even), Odd count: \(result.odd)")

// Expected Output: Even count: 2, Odd count: 4

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

print("\n💡 Topic 3A 💡\nDefault Values\n")

func printTimesTables(for number: Int, end: Int = 12) {
    for i in 1...end {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(for: 5, end: 20)
printTimesTables(for: 8)


print("\n🧠 Challenge 3A: 🧠")
print("Write a function called greetUser that takes a name as input and prints a personalized greeting message. If no name is provided, the function should print a generic greeting message. 👇\n")

// Example
// greetUser(name: "Alice") -> Output: "Hello, Alice!"
// greetUser() -> Output: "Hello, there!"


/*
 👇 Your new code below 👇
*/



print("\n-------------------------------------------------------------------------------------------")

print("💡 Topic 4 💡\nError Handling")

enum CustomError: Error {
    case invalidInput
    case outOfRange
}

func divideNumbers(_ dividend: Int, by divisor: Int) throws -> Int {
    guard divisor != 0 else {
        throw CustomError.invalidInput
    }
    
    if dividend < 0 || divisor < 0 {
        throw CustomError.outOfRange
    }
    
    return dividend / divisor
}

do {
    let result = try divideNumbers(10, by: 2)
    print("Result: \(result)")
} catch CustomError.invalidInput {
    print("Invalid input: Division by zero.")
} catch CustomError.outOfRange {
    print("Out of range: Numbers must be positive.")
} catch {
    print("Unknown error occurred.")
}

/*
 In this example, we define a custom CustomError enum to represent two specific error cases: invalidInput when dividing by zero and outOfRange when either the dividend or divisor is negative. The divideNumbers function takes two integers and performs division, but it throws an error if the divisor is zero or if either number is negative.

 The do-catch block is used to handle potential errors that may be thrown by the divideNumbers function. If an error occurs, the appropriate catch block is executed, providing meaningful feedback to the user about the specific error that occurred.
 */


print("\n🧠 Challenge 4: 🧠")
print("Write a function called calculateSquareRoot that takes a positive number as input and returns its square root. If the input is negative, the function should throw a custom error NegativeNumberError. 👇\n")

/*
 Example
 
 do {
     let result = try calculateSquareRoot(16)
     print("Square root: \(result)")
 } catch NegativeNumberError {
     print("Error: Input must be a positive number.")
 } catch {
     print("Unknown error occurred.")
 }
 
 You need to implement the calculateSquareRoot function to calculate the square root of the given positive number. If the input is negative, the function should throw the NegativeNumberError custom error. The do-catch block should handle this error and print an appropriate error message.
 */


/*
 👇 Your new code below 👇
*/
