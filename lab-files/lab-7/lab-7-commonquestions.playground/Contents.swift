import UIKit

/*
 Day - 7 Classes and Structs Commonalities
 */

// 1. Both classes and structs can have properties and methods.
// For example:

// Class example
class Person {
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    func greet() {
        print("Hello, my name is \(name) and I am \(age) years old.")
    }
}

// Struct example
struct Car {
    var make: String
    var model: String
    
    func startEngine() {
        print("Starting the engine of \(make) \(model).")
    }
}


// 2. Both classes and structs can define initializers. For example:


class Person2 {
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

// Struct example
struct Point {
    var x: Int
    var y: Int
    
    init(x: Int, y: Int) {
        self.x = x
        self.y = y
    }
}

// 3. Both classes and structs can have computed properties. For example:


// Class example
class Circle {
    var radius: Double
    
    var area: Double {
        return Double.pi * radius * radius
    }
    
    init(radius: Double) {
        self.radius = radius
    }
}

// Struct example
struct Rectangle {
    var width: Double
    var height: Double
    
    var area: Double {
        return width * height
    }
}

//4. Both classes and structs can conform to protocols. For example:

// Class example
class Vehicle1: Equatable {  // Changed name to Vehicle1
    var brand: String
    var year: Int
    
    init(brand: String, year: Int) {
        self.brand = brand
        self.year = year
    }
    
    static func ==(lhs: Vehicle1, rhs: Vehicle1) -> Bool {
        return lhs.brand == rhs.brand && lhs.year == rhs.year
    }
}

// Struct example
struct Book: Comparable {
    var title: String
    var author: String
    
    static func <(lhs: Book, rhs: Book) -> Bool {
        return lhs.title < rhs.title
    }
}


//5. Both classes and structs can have methods that modify their values. For example:

// Class example
class Counter {
    var count: Int
    
    init(count: Int) {
        self.count = count
    }
    
    func increment() {
        count += 1
    }
    
    func reset() {
        count = 0
    }
}

// Struct example
struct Point2 {
    var x: Int
    var y: Int
    
    mutating func moveBy(dx: Int, dy: Int) {
        x += dx
        y += dy
    }
}


//-------------------------------------------------------------------------------------------

/*
 Day - 7 Classes and Structs Differences
 */

//Here are examples of class and struct in Swift, demonstrating differences between them:

//1. Declaration and Initialization:

// Class example
class Fruit {
    var name: String
    var color: String
    
    init(name: String, color: String) {
        self.name = name
        self.color = color
    }
}

let apple = Fruit(name: "Apple", color: "Red")


// Struct example
struct Animal {
    var type: String
    var numberOfLegs: Int
}

let dog = Animal(type: "Dog", numberOfLegs: 4)


//2. Value and Reference Semantics:

// Class example
class Vehicle {
    var type: String
    
    init(type: String) {
        self.type = type
    }
}

var car = Vehicle(type: "Car")
var vehicle = car
vehicle.type = "Truck"
print(car.type)  // Output: Truck

// Struct example
struct Planet {
    var name: String
}

var earth = Planet(name: "Earth")
var planet = earth
planet.name = "Mars"
print(earth.name)  // Output: Earth


//3. Mutability:

// Class example
class Laptop {
    var brand: String
    
    init(brand: String) {
        self.brand = brand
    }
}

let laptop = Laptop(brand: "Apple")
laptop.brand = "Dell"  // We can modify the property even though 'laptop' is declared as a constant (let)

// Struct example
struct Tree {
    var type: String
}

let tree = Tree(type: "Oak")
// tree.type = "Pine"  // Error: We cannot modify the property because 'tree' is declared as a constant (let)


//4. Identity and Equality:

// Class example
class City: Equatable {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    static func ==(lhs: City, rhs: City) -> Bool {
        return lhs.name == rhs.name
    }
}

let city1 = City(name: "Paris")
let city2 = City(name: "Paris")
print(city1 == city2)  // Output: true

// Struct example
struct Coordinate: Equatable {
    var x: Int
    var y: Int
}

let coordinate1 = Coordinate(x: 1, y: 2)
let coordinate2 = Coordinate(x: 1, y: 2)
print(coordinate1 == coordinate2)  // Output: true


//5. Copying:

// Class example
class Mobile {
    var brand: String
    
    init(brand: String) {
        self.brand = brand
    }
}

var mobile1 = Mobile(brand: "Samsung")
var mobile2 = mobile1
mobile2.brand = "Nokia"
print(mobile1.brand)  // Output: Nokia

// Struct example
struct Box {
    var length: Double
    var width: Double
}

var box1 = Box(length: 10, width: 5)
var box2 = box1
box2.length = 20
print(box1.length)  // Output: 10


//6. Memory Management: (No example needed, as this is an internal implementation detail handled by Swift's automatic reference counting mechanism.)

//7. Type Casting:

// Class example
class Bird {}

class Sparrow: Bird {
    var color: String
    
    init(color: String) {
        self.color = color
    }
}

let bird: Bird = Sparrow(color: "Brown")

if let sparrow = bird as? Sparrow {
    print("The bird is a sparrow of color \(sparrow.color).")
}

// Struct example
struct Lizard {}

let iguana: Lizard = Lizard()

// let sparrow = book as? Sparrow  // Error: Structs do not support type casting.


//8. Default Initializers:

// Class example
class Food {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}

let food = Food(name: "Pizza")

// Struct example
struct Position {
    var x: Int
    var y: Int
}

let position = Position(x: 1, y: 2)

