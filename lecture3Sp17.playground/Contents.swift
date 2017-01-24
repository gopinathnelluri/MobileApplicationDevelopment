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

