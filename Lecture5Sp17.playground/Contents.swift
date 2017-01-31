//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

let x = (9000,"uhcl",true,"Houston")

let city = "Houston"

let x1:(Int, String, Bool, String)
x1 = (9000,"uhcl",true,city)

x1.0
x1.1
x1.2
x1.3
//accessing tuple elements

var a = 10
var b = 3

a+=10; b+=2
//semi-collen acts as a seperator but not terminator

a
b



let x2 = (size:9000,name:"uhcl",inTex:true,city:"Houston")
x2.size
x2.name


let x3:(size:Int, name:String, inTex:Bool, city:String)
x3 = (9000,"uhcl",true,city)

x3.size
x3.name
x3.inTex


var (sz, _, _, city1) = x

sz
city1

//var i = 0;
//for i = 0; i < 10 ; i=i+1{
//    print(i)
//}
// no longer works

for i in 0...4{
    print(i)
}
print("\n\n")
for i in (0...4).reversed(){
    print(i)
}

print("\n\n")

let names = ["bob","ed","join"]
for name in names{
    print(name)
}

var salaries = ["bob":10000,"Ed":20000,"jim":5000]

for(name,salaries) in salaries{
    print("\(name) makes $\(salaries) per year")
}

print("\n\n")


var str3 = Array<String>()

for(name,salary) in salaries{
    str3.append("\(name) make $ \(salary) per year")
}

print("\n\n")

for key in salaries.keys{
    print("Name: \(key) Salary:\(salaries[key]!)")
}

print("\n\n")

for value in salaries.values{
    print("Salaries: \(value)")
}

//functions

func add(first:Int, second:Int) -> Int{
    return first+second
}

let y = add(first: 5, second: 7)


//let y1 = add( 5,7)
//it wont work



func add1(theNumber first:Int = 9,toTheNumber second:Int = 10) -> Int{
    return first+second
}

let y2 = add1(theNumber: 5, toTheNumber: 7)

let y3 = add1()

let y4 = add1(theNumber: 5)

let y5 = add1(toTheNumber: 7)




func add2(_ first:Int = 9,_ second:Int = 10) -> Int{
    return first+second
}

let y1 = add2( 5,7)




