//: Playground - noun: a place where people can play

import UIKit


var n:Int = 10

for _ in 1 ... n {
    print("Hello")
}




//// inout


func inc(_ x: inout Int){
    print("2: \(x)")
    x = x+1
    print("3: \(x)")
}


var x: Int = 10

print("1: \(x)")

inc(&x)

print("4: \(x)")


//


func fib (_ x : Int) -> Int {
    if x <= 1 {
        return x
    }
    return fib(x-1)+fib(x-2)
}


for i in 1 ... n {
    fib(i)
}


strtod("855.233",nil)


/////// enum

enum Vehicle {
    case Truck (Int, String)
    case Car (Bool, Bool, String)
    case Bike (String, (String) -> Int)
}



func speed(_ brand: String) -> Int
{
    if brand == "honda"{
    return 6
    } else if brand == "toyota" {
        return 7
    } else {
        return 10
    }
}

var spd: (String) -> Int = speed

var v:Vehicle = .Bike("honda", spd)

switch v {
case .Truck (let cap, let brand):
    print("\(cap) \(brand)")
case .Car (let sed, let auto, let brand):
    print("\(sed) \(auto) \(brand)")
case .Bike (let brand, let spd2):
    print("\(brand)")
    var y = spd2(brand)
    print("y = \(y)")
}





// enum again

enum Seasons: Int {
    case Spring = 1, Summer, Fall, Winter
}

var s:Seasons = .Fall

print(s.rawValue)


enum Optional<Type>{
    case none
    case Some (Type)
}

let z = Optional<String>.none

let y = Optional<String>.Some("hello")















// protocols

protocol P {
    var prop1 : String {get set}
    var prop2 : String! {get set}
}

protocol Q {
    var name: String {get}
}

class MyNewType : P {
    var x : String!
    var prop1: String = ""
    var prop2: String!
}

struct OtherType : Q {
    var name : String
}

class Person : Q {
    var title: String?
    var fname: String
    var lname: String
    init(_ salutation: String? = nil, _ first: String, _ last: String){
        title = salutation
        fname = first
        lname = last
    }
    
    var name: String {
        get { // we can remove this as we have only getter
            return (title == nil ? "" : title!) + " "+fname + " " + lname
        } // and this
    }
}


let p = Person("mr", "gopinath", "nelluri")
p.name














