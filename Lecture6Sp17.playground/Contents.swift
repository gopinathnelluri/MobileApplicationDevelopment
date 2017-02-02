//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

class Employee {
    //Properties
    var name:String = "hello"
    var id:Int
    var rate:Double=10{
        willSet{
            print("the value about to change from \(rate) to \(newValue)")
        }
        didSet{
            print("the value changed from \(oldValue) to \(rate)")
        }
    }
    var hours: Double = 0

    init (){
        id = 10
    }
    
    var annualPay:Double{
        get{
            return rate * 2080
        }
        set{
            rate = newValue / 2080
        }
    }
    
    
    
    init (name: String, id:Int, rate:Double, hours:Double){
    self.name = name
    self.id = id
    self.rate = rate
    self.hours = hours
    }
    
    init (name: String, id:Int, rate:Double){
        self.name = name
        self.id = id
        self.rate = rate
        self.hours = 0 // or initialize  at the declaration
    }
    
    func salary() -> Double{
        //
        return hours < 40 ? hours * rate : (hours - 40) * rate * 1.5 + 40 * rate
    }
    
    func annualPay1() -> Double{
        return rate * 2080
    }
}

var e = Employee()
e.name

var e1 = Employee(name: "uhcl", id: 123, rate: 2.5, hours: 40)
e1.salary()
e1.name = "UH-Clear Lake"
e1.name

e1.annualPay1()

e1.annualPay

e1.rate

e1.annualPay = 41600

e1.rate

var e2 : Employee = Employee(){
    willSet{
        print("the value about to change from to \(newValue)")
    }
    didSet{
        print("the value changed from \(oldValue) ")
    }
}

//e2 = Employee()
print("\n\n")
e2 = Employee(name: "uhcl", id: 123, rate: 2.5, hours: 40)

print("\n\n")

var a=10{
    willSet{
        print("the value about to change  to \(newValue)")
    }
    didSet{
        print("the value changed to \(oldValue) ")
    }
}

a = 11

// refer "any type in ppt"
