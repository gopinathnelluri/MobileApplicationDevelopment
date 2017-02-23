//
//  MortgageCalc.swift
//  Lecture10MortgageApp
//
//  Created by  on 2/23/17.
//  Copyright © 2017 uhcl. All rights reserved.
//

import Foundation
class MortgageCalc {
    var currentValue: Double = 0
    var tax:Double = 0
    var intRate: Double = 0
    var nyears: Int = 0
    
   
    
    init(_ cv: Double,_ t:Double,_ i:Double,_ y:Int){
        currentValue = cv
        tax = t
        intRate = i
        nyears = y
    }
    
    
    
    func computeMonthlyPayment() -> Double {
        var pmt = currentValue * (intRate + intRate / pow(1.0 + intRate, Double(nyears) * 12))
        pmt = pmt + tax
        return pmt
        
        
    }
    
}
