//
//  calculator.swift
//  GPA Calculator
//
//  Created by  on 3/9/17.
//  Copyright © 2017 uhcl. All rights reserved.
//

import Foundation

class Calculator {
    var cgpa:Double
    var hrsf:Double
    var c1G: Double
    var c2G: Double
    var c3G: Double
    var c1H: Double
    var c2H: Double
    var c3H: Double
    
    init (_ cgpa: Double, _ hrsf: Double , _ c1G: Double, _ c2G: Double, _ c3G: Double, _ c1H: Double, _ c2H: Double, _ c3H : Double){
        self.cgpa = cgpa
        self.hrsf = hrsf
        self.c1G = c1G
        self.c2G = c2G
        self.c3G = c3G
        self.c1H = c1H
        self.c2H = c2H
        self.c3H = c3H
    }
    
    func computeCGPA() -> Double {
        return (cgpa * hrsf + c1G * c1H + c2G + c2H + c3G + c3H) / (hrsf + c1H + c2H + c3H)
    }
    
    func computeGPA() -> Double{
        return (c1G * c1H + c2G + c2H + c3G + c3H) / (c1H + c2H + c3H)
    }
}
