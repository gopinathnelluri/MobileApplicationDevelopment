//: Playground - noun: a place where people can play

import UIKit
import Foundation

var str = "Hello, playground"

var a :[String: Int] = ["a":123,"b":145]

var b = [String:Int]()

a.count
a["gopi"] = 10
a["gopi"] = 11
a



print(a["gopi"] ?? 1)




5+9.1

"ba"<"c"

"\u{1F0A3}"

var k :String.Index = str.index(str.startIndex, offsetBy: 1)
str[k]

str.substring(from: k)
str.components(separatedBy: ",")
Int("1")


("1" as NSString).intValue

0b101


print("a",terminator: "\n")


var q: Array<String> = Array<String>()
q.append("a")
q.append("c")
q.joined()


var hj = [Any]()
hj.append(1)
hj.append("a")
hj.append(str.components(separatedBy: ","))

var ty = Array(arrayLiteral: "abc")
hj.first ;
hj.last



str.characters


print(Array(str.characters).reversed()._base)

var k2 = Array(str.characters).reversed()
String(k2)

String(Array(str.characters).reversed())
String(repeating: "3", count: 5)

var kkk :[Any] = ["a",1] as [Any]
kkk += [5,"d"]
kkk.removeSubrange(0..<2)

//Int.repeatElement("3", count: 4)

for i in [0...3] {
    print("a")
}

kkk
kkk.index(0, offsetBy: 1)

if Bool("true")! {
    print("hello")
}


print(str.characters.reversed().map({String($0)}).joined())

