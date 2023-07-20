import UIKit

/*
 
Day 5 - Closures
 
*/


print("💡 Topic 1 💡\nCreating Closures\n")

// Closures are special functions that can be assigned to variables and used as parameters in other functions:

//-------------------------------------------------------------------------------------------

print("\n💡 Topic 1A 💡\nCreating closures\n")

// defining a regular function
func hello() {
    print("hello!")
}

hello()

// creating a closure
let helloCopy = hello()
helloCopy()

// or you can create closures directly
let helloClosure = {
    print("Hello world!")
}

helloClosure()
print("\n🧠 Challenge 1A: 🧠")

print("Create a closure that prints the sum of 500 and 600👇\n")

/*
 👇 Your new code below 👇
*/


bigNumber()

print("\n💡 Topic 1B 💡\nCreating closures with parameters\n")

// closures with parameters look a little different from regular functions, and parameters act a little different:
func helloVer2(word: String) {
    print("hello \(word)!")
}

helloVer2(word: "world") // prints hello world!

let helloVer2Copy = helloVer2

// the name of the parameter is forgotten when its assigned to a variable
helloVer2Copy("world") // also prints hello world!


// you can also create these types of closures directly too
let helloClosureVer2 = { (word:String) -> Void in
    print("hello \(word)!")
}

helloClosureVer("closure") // prints hello closure!

print("\n🧠 Challenge 1B: 🧠")
print("Create a closure that prints the sum of two numbers👇\n")

/*
 👇 Your new code below 👇
*/

sum(9, 10)

print("💡 Topic 2 💡\Understanding When to Use Closures\n")

// Closures have specific use cases


//-------------------------------------------------------------------------------------------
print("\n💡 Topic 2A 💡\nWhere not to use closures\n")
// some examples of where to not use closures:
// Even though we're using it here, closures shouldn't be used like functions: to extract reused code
// Direct closure definition shouldn't be used as much if you want your code to be readable because the definition for a closure is messier than a function definition


print("\n🧠 Challenge 2A: 🧠")

// should a closure be used here:
let dayOfTheWeek = { (day:Int) -> String in
    let day = (day - 1) % 7
    return ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"][day]
}

print(dayOfTheWeek(1))

print("💡 Topic 3 💡\Using Functions and Closures\n")



//-------------------------------------------------------------------------------------------
print("\n💡 Topic 3A 💡\nThe .sorted method\n")
// by default, the sorted method sorts an array in ascending order
// but you can pass a closure into the sorted method as a parameter that takes in two values and returns a boolean value, allowing you to sort an array however you want

let cookies = ["Famous Amos","Oreos","Chips Ahoy","Tates","Grandmas"]
print(cookies.sorted()) // prints ["Chips Ahoy", "Famous Amos", "Grandmas", "Oreos", "Tates"]

func oreosFirst(cookie1:String, cookie2:String) -> Bool{
    if cookie1 == "Oreos"{
        return true
    } else if cookie2 == "Oreos"{
        return false
    }
    return cookie1 < cookie2
}

print(cookies.sorted(by: oreosFirst)) // prints ["Oreos", "Chips Ahoy", "Famous Amos", "Grandmas", "Tates"]

print("\n🧠 Challenge 3A: 🧠")
print("The map method allows you to transform every item in an array using some code. It takes in a closure as a parameter and runs that on every item in an array. Use the map function to convert the array strings into the lengths of each of the strings👇\n")

var strings = ["apple", "earth", "code", "next", "ios", "swift"]

/*
 👇 Your new code below 👇
*/




//-------------------------------------------------------------------------------------------
print("\n💡 Topic 3B 💡\nUsing closures in .sorted\n")
let cookiesClosures = ["Famous Amos","Oreos","Chips Ahoy","Tates","Grandmas"]

// heres where you can (and should) use a closure:
let newSortedCookiesClosures = cookiesClosures.sorted(by: { (cookie1:String, cookie2:String) -> Bool in
    if cookie1 == "Oreos"{
        return true
    } else if cookie2 == "Oreos"{
        return false
    }
    return cookie1 < cookie2
})

print(newSortedCookiesClosures) // prints ["Oreos", "Chips Ahoy", "Famous Amos", "Grandmas", "Tates"] the same as the function version

print("\n🧠 Challenge 3B: 🧠")
print("Convert your code from the last challenge into a closure👇\n")

/*
 👇 Your new code below 👇
*/

//-------------------------------------------------------------------------------------------

print("\n💡 Topic 3C 💡\nRemoving type safety (safely)")
// since we know the types of the parameters that are being passed into the function and the output type of the function because it is a closure in another function, we can remove the type safety:

let cookiesNoTypeSafety = ["Famous Amos","Oreos","Chips Ahoy","Tates","Grandmas"]

let newSortedCookiesNoTypeSafety = cookiesNoTypeSafety.sorted(by: {(cookie1, cookie2) in
    if cookie1 == "Oreos" {
        return true
    } else if cookie2 == "Oreos" {
        return false
    }
    return cookie1 < cookie2
})

print(newSortedCookiesNoTypeSafety)

print("\n🧠 Challenge 3C: 🧠")
print("Use a closure in the sorted function to sort an array where anything that starts with an 'f' is first and everything else is sorted regularly👇\n")

let fArray = ["create", "apple", "fun", "friday", "roblox", "igloo", "panama", "hello", "formula", "minecraft"]

/*
 👇 Your new code below 👇
*/


print("💡 Topic 4 💡\Trailing Closures\n")
// if a function takes another function as a parameter, like sorted, you can convert it into a trailing closure by using Swift's trailing closure syntax, which looks like this
let cookiesTrailing = ["Famous Amos", "Oreos", "Chips Ahoy", "Tates", "Grandmas"]

let newSortedCookiesTrailing = cookiesTrailing.sorted {cookie1, cookie2 in // no more by: or parentheses just straight into the closure
    if cookie1 == "Oreos" {
        return true
    } else if cookie2 == "Oreos" {
        return false
    }
    return cookie1 < cookie2
}

print(newSortedCookiesTrailing)

//-------------------------------------------------------------------------------------------

print("\n💡 Topic 4A 💡\nShorthand syntax")
// Swift already pre-names each of the parameters that are being passed into the trailing closure: $0, $1, $2, ...
// using this we can rewrite the sorting function even shorter, removing the cookie1, cookie2 in and replacing cookie1 and cookie2 with $0 and $1 respectively:

let cookiesShortandSyntax = ["Famous Amos", "Oreos", "Chips Ahoy", "Tates", "Grandmas"]

let newSortedCookiesShorthandSyntax = cookiesShortandSyntax.sorted {
    if $0 == "Oreos" {
        return true
    } else if $1 == "Oreos" {
        return false
    }
    return $0 < $1
}

print(newSortedCookiesShorthandSyntax)



print("\n🧠 Challenge 4A: 🧠")

print("Use trailing closures and shorthand syntax with the map method to create a new nums array where every even number is squared and every odd number is cubed👇\n")

let nums = [4, 1, 7, 5, 0, 2, 9, 3, 8, 4, 7, 2, 5, 3, 0]

/*
 👇 Your new code below 👇
*/

//-------------------------------------------------------------------------------------------
print("\n💡 Topic 4B 💡\nRemoving the return keyword")
// if your trailing closure is one line and returns in that one line, you can remove the return
let hellos = ["hello", "hi", "good morning"]
let hellosCapital = hellos.map { $0.uppercased() }
print(hellosCapital) // prints ["HELLO", "HI", "GOOD MORNING"]

print("\n🧠 Challenge 4B: 🧠")

print("Rewrite the previous challenge in one line (using the terinary operator) and remove the return statement👇\n")

let numsChallenge = [4, 1, 7, 5, 0, 2, 9, 3, 8, 4, 7, 2, 5, 3, 0]

/*
 👇 Your new code below 👇
*/

