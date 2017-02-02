//: Playground - noun: a place where people can play

import UIKit

let a = [1,2,3]
//a[1]= 4
//since it is immutable


let b = [[1,2],[3,4]]
//b[1][1] = 4
//since it is immutable


var c = [1,2,3,4,5]
c += [40,50,60]

c.remove(at: 2)

c

c.removeSubrange(0..<3)

c.replaceSubrange(0...3, with: [40,50])

c.insert(contentsOf: a, at: 1)



var d = [1,2,3,4,5]

var e = d

d = []

e
//completely made a copy



let array = ["a","b","c","d","e","f"]

let subarray1 = array[0..<3]

for i in [0..<3]{
  print(subarray1[i])
}


for i in 0..<3{
    print(subarray1[i])
}



var a1 = [100,80,40,30,20,1000]
let idx = a1.index(of: 20)
//index optional

let index = a1.index(of:99)

if let index = a1.index(of:99){
    print(index)
}else{
    print("element not found")
}



var arr = [400,1000,50,90]


arr.sorted()

func compare (first:Int, second:Int) -> Bool{
    return first > second
}

arr.sorted(by: compare)


arr.sort(by: {(first:Int, second:Int) -> Bool in return first > second})

arr

arr.sort(by: {(first, second) in return first < second})

arr


arr.sort(by: {$0 > $1})

arr

arr.sort(){$0 < $1}

arr

arr.sort{$0 > $1}

arr

//Closures -> passing a function in arguments

arr.sort(by: <)


// Mapping and filtering

var a2 = [1,2,3]
var b2 = a2.map({$0 * $0})
b2

var c1 = a2.filter({$0 % 2 == 0})
c1

var d1 = a2.reduce(1, { $0 * $1})
d1


var e1 = a2.reduce(0, { $0 + $1 * $1})
e1

var a3 = [1.0,2.0,3.0]

a3.sort(by: >)

var c3 = a3.map({$0 * 2}) //map for float
c3


//Dictionary

var salaries = [String: Int]()

salaries = ["bob":1000,"gopinath":1900]

salaries["nelluri"] = 10000

salaries

print(salaries["nelluri"]!)
//optional

salaries.removeValue(forKey: "nelluri")
//removes and return value


salaries



salaries["gopinath"] = nil
//removes but does not return values

salaries

salaries["gopinath"]

