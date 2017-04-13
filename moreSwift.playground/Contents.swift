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





//static protocol

protocol StProt {
    static var typeProp: Int {get set}
}

class WithStatic: StProt{
    static var typeProp: Int = 50
}

WithStatic.typeProp


protocol ProtoWithMethods {
    var z:Int {get set}
    func func1()
    func func2(x:String) -> Int
    init (x:Int)
}

class Init {
    var a:Int
    init (x:Int){a=x}
}

class Initilaized:Init, ProtoWithMethods {
    var y:Int
    var z: Int
    func func1(){
        print("hello")
    }
    func func2(x:String) -> Int{
        return x.characters.count
    }
    required override init (x:Int){
        y = x
        z = 0
        super.init(x: x)
    }
}

var a = Initilaized(x: 2)

a.func1()
a.func2(x: "hello everyone")



protocol Browsable{
    func browse(s:String)
}

protocol Editable{
    mutating func edit(x:Int)
}

struct xs: Editable {
    var b: Int = 0
    mutating func edit(x:Int){
        b+=1
        print(xs.self)
    }
}

class Website: Browsable, Editable{
    func browse(s: String){
        print("Hello from website's browse")
    }
    func edit(x: Int){
    print("The value of x is \(x)")
    }
}

class Document: Editable{
    func edit(x: Int){
        print("The value of x from Document is \(x)")
    }
}

class Settings: Editable{
    func edit(x: Int){
        print("The value of x from Settings is \(x)")
    }
}





var google: Website = Website()

var blueTooth: Settings = Settings()

var word: Document = Document()


var p1: Editable = blueTooth

var p2: Editable = word

var p3: Editable & Browsable = google



func f2(x: Browsable & Editable){
    x.browse(s: "hi")
    print("func done")
}

f2(x:google)


protocol onlyClass: class{
    func onlyClassCanUseIt(s:String)
}












class TempClass{
    var st: String!
    var n: Int!
    
    init(s:String,i:Int){
        st = s
        n = i
    }
    
}


var tc = [TempClass]()

tc.append(TempClass(s:"Hello",i:10))
tc.append(TempClass(s:"Hello",i:12))
tc.append(TempClass(s:"Hello",i:45))
tc.append(TempClass(s:"Hello",i:11))
tc.append(TempClass(s:"Hello",i:89))
tc.append(TempClass(s:"Hello",i:2))

tc.sorted(by: {$0.n < $1.n})













