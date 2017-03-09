//
//  ViewController.swift
//  Lecture10MortgageApp
//
//  Created by  on 2/16/17.
//  Copyright © 2017 uhcl. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var mortgageCalc: MortgageCalc!
    
    @IBOutlet weak var currentPrice: UITextField!
    
    @IBOutlet weak var taxRate: UITextField!
    
    
    @IBOutlet weak var interestRate: UILabel!
 
    
    @IBOutlet weak var years: UILabel!
    
    @IBOutlet weak var resultView: UIStackView!
    @IBOutlet weak var totalPayment: UILabel!
    
    @IBOutlet weak var stepper: UIStepper!
    
    @IBAction func changeInterestRate(_ sender: UISlider) {
        interestRate.text! = String(format: "%.1f", sender.value) + "%"
    }
    
    
    @IBAction func changeYear() {
        years.text! = "\(stepper.value)"
        stepper.maximumValue = 30.0
        stepper.minimumValue = 1.0
        stepper.wraps = true
        stepper.autorepeat = true
        stepper.value = Double(years.text!)!
        
        
    }
    
    
    
    @IBAction func calculateMonthlyPayment(_ sender: UIButton) {
        let currentValue =  Double(currentPrice.text!)!
        let tax = Double(taxRate.text!)!
        let loc = (interestRate.text!).characters.count - 1
        let intRate = Double(interestRate.text!.substring(to: interestRate.text!.index(interestRate.text!.startIndex, offsetBy: loc)))! / 100.0
        print(years.text!)
        let nyears = Int(Double(years.text!)!)
        
        
        
        
        
        
        mortgageCalc = MortgageCalc(currentValue,tax,intRate,nyears)
        
        let pmt = mortgageCalc.computeMonthlyPayment()

        totalPayment.text! =  String(format: "$%.2f",pmt)
        resultView.isHidden = false
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        stepper.wraps = true

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


/*
 
 intRate /= 12
 
 tax = (tax / 12 ) * currentValue
 
 var pmt = currentValue * (intRate + intRate / pow(1.0 + intRate, nyears * 12))
 pmt = pmt + tax
 */
//totalPayment.text =  String(format: "Your Monthly Payment is : $%.2f",pmt)


