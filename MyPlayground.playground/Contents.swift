//: Playground - noun: a place where people can play

import UIKit

var str = "Hello"
var newString = str + " Rob"

for character in newString.characters {
    print(character)
}

var newTypeString = NSString(string: newString)
newTypeString.substringToIndex(5)
newTypeString.substringFromIndex(6)
newTypeString.substringWithRange(NSRange(location: 3, length: 5))

if newTypeString.containsString("Rob") {
    // Rob is there!
}


newTypeString.componentsSeparatedByString(" ")
newTypeString.uppercaseString
newTypeString.lowercaseString



/*
var number = 99

var isPrime = true
if number == 1 {
    isPrime = false
}

if number != 2 && number != 1 {
    for var i = 2; i < number; i++ {
        if number % i == 0 {
            isPrime = false
        }
    }
}
print(isPrime)
*/

// Basic while Loop
/*
var myArray = [8,3,6,8,2,45,21]
var i=0
while i < myArray.count {
    myArray[i] = myArray[i] - 1
    
    i++
}
print (myArray)


var i = 1
while i <= 10 {
    print( i * 5 )
    i++
}
*/

/*
// for loops
var arr = [8,3,9,91]

for x in arr {
    print(x)
    // cannot use x to change the array
    
}

for (index, value) in arr.enumerate() {
    print(value)
    
    arr[index] = value + 1
}
print(arr)

var myArray:[Double] = [8, 7, 19, 28]
// var myArray = [8.0, 7.0, 19.0, 28.0]

for (index, value) in myArray.enumerate() {
    myArray[index] = value / 2
}
print(myArray)
*/


/*
for var i = 20; i>10; i-- {
    
    print(i)
    
}

for var i = 2; i <= 20; i = i + 2 {
    print(i)

}
*/

// If statements

/*
var age = 20

if age >= 18 {
    print("You can play!")
} else {
    print("Sorry, you're too young")
}

var name = "Kirsten"

if name == "Rob" {
    print("Hi " + name + " you can play!")
} else {
    print("Sorry, " + name + " you can't play!")
}

if name == "Kirsten" && age >= 18 {
    print("You can play!")
}

if name == "Kirsten" || name == "Rob" {
    print("Welcome " + name)
}

var isMale = true

if isMale {
    print("You are a man")
}
*/
