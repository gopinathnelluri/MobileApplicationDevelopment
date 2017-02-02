//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
//automati type inference


//for later use you must assign type to variable
var stra : String
stra = "Assigned, Type"

var x : Int = 10
//hold optio key for variable information



//x++ & --x will no longer work.. they are taken out from past one year



//let that can be declared and assign value later but only once
let x1 : Int
x1 = 10

//examples
let pi: Double = 3.14
var xa = 5
var y : Double = 6
var name = "gopinath"
name = name + " nellur"
print(name)

5+4.9
//implicit type casting

//xa+y wont work

Double(xa)+y

198_723_456
//underscores in numbers are for developers purpose


//optional -- if you have something we gona store it if not nill
var z: Int?
z = 10


print(z)
//unwrap optional
print(z!)
z = 100

var notOptional = 10
var opt: Int? = 90
x = notOptional + opt!


var p : Int!
p = 20
print(p)



let st = String(repeating: "ABC", count: 10 )
let st1 = String(repeatElement("A", count: 19))
let st2 = String(repeating: "\u{1F0A3}", count:10)
let st3 = String(["a","p","p","l","e"])
let st4 = String(describing: ["aaaa","bbbb"])

let name1 = "Gopinath"
"My name is Gopinath and I am 24 years old"
var message = "My name is "+name1+" and I am "+String(24)+" years old"

var message1 = "My name is \(name1) and I am \(24) years old"
//String Interpolation

var age = 24
var message2 = "My name is \(name1) and I am \(age) years old"

name.capitalized
name

name.uppercased()
name.capitalized.lowercased()

name.uppercased().capitalized

name.characters

name.characters.count



var π = 3.14
print(π)






