//: Playground - noun: a place where people can play

import UIKit

var name = "bob smith"
name.characters.count

let loc1 = name.index(name.startIndex, offsetBy:4)
let loc2 = name.index(name.startIndex, offsetBy:7)

name[loc2]
name.substring(to: loc2)
name.substring(from: loc1)
let name2 = name[loc1 ... loc2]
let name3 = name[loc1 ..< loc2]
let str = "abcdefghijk"
str.hasPrefix("a")
str.hasPrefix("abc")
str.hasSuffix("ijk")

let str1 = "hello,hi,howdy,hola"
let a = str1.components(separatedBy: ",")

let str2 = a.joined()
let str3 = a.joined(separator: " ")

var  w = 0b11111001
let b = 60

String(b, radix:16)
//bit format conversion : binary -> decimal -> hex

let x = 5.5
let str4 = "\(x)"
let y = "34.7"
let z = Double(y)
let w1 = Int(y)
//take a close look here
// Double, Int will return an optional



//my expemriments

let z2:Double! = Double(y)
let w2:Int! = Int(y)

z2
print(z2)
//print(w2)


//my expemriments


let x1 = 10
let y1 = 90
print(x1,separator:"",terminator:"")

print(y1)

let str6 = String(format: "%9.9d", 357658)//print 9 digits


"\t 9999Welcome to \t CSCI 5737\n\n".trimmingCharacters(in: NSCharacterSet.whitespacesAndNewlines)

"\t 9999Welcome to \t CSCI 5737\n\n".trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)

"\t 9999Welcome to \t CSCI 5737\n\n".trimmingCharacters(in: NSCharacterSet.newlines)


//**Arrays**

var newArray = Array<String>()
var newArray2 = [String]()
var otherArray: [String] = []

var u=1*3+97/4


var array = Array(arrayLiteral:"abc")

var salaries = [100000, 200000, 340000]
salaries.insert(90000,at : 3)
salaries.insert(90000,at : salaries.count)
salaries.first
salaries.last
newArray.first
salaries
salaries.reverse()
salaries

var samArray = [Int](repeating:5,count:10)

var arr2d = [[Int]]()

var r = [Int](repeating: 5, count:10)
var r2 = [Int](repeating: 7, count: 15)
arr2d.append(r)
arr2d.append(r2)

var arr2d2 = [[Int]](repeating: r, count: 2)



