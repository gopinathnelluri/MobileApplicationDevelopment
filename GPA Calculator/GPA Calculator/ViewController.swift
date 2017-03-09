//
//  ViewController.swift
//  GPA Calculator
//
//  Created by  on 3/9/17.
//  Copyright © 2017 uhcl. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    var cal: Calculator!

    @IBOutlet weak var year: UISegmentedControl!
    
    
    @IBOutlet weak var cgpa: UITextField!
    
    
    @IBOutlet weak var chrsf: UITextField!
    
    
    
    
    @IBOutlet weak var nhrsfStepper: UIStepper!
    
    @IBAction func nhrsF(_ sender: UITextField) {
        nhrsfStepper.value = Double(sender.text!)!
    }
    
    @IBOutlet weak var cgpaSlider1: UISlider!
    
    @IBAction func cgpaChange(_ sender: UITextField) {
        if Double(cgpa.text!) != nil {
            cgpaSlider1.value = Float(Double(cgpa.text!)!)
        }
    }
 
    @IBAction func cgpaSlider(_ sender: UISlider) {
        cgpa.text! = String(format: "%.1f", sender.value)
    }
    
    @IBAction func chrsfStepper(_ sender: UIStepper) {
        chrsf.text! = String(format: "%0.f", sender.value)
    }
    
    @IBOutlet weak var c1G: UITextField!
    
    @IBOutlet weak var c1H: UITextField!
    
    
    @IBAction func c1HStepper(_ sender: UIStepper) {
        c1H.text! = String(format: "%0.f", sender.value)
    }
    @IBOutlet weak var c1HS: UIStepper!
    
    @IBAction func c1HC(_ sender: UITextField) {
        c1HS.value = Double(sender.text!)!
    }
    
    
    @IBOutlet weak var c2G: UITextField!
    
    @IBOutlet weak var c2H: UITextField!
    
    @IBAction func c3HStepper(_ sender: UIStepper) {
         c2H.text! = String(format: "%0.f", sender.value)
    }
    
    @IBOutlet weak var c2HS: UIStepper!
    
    @IBAction func c2HC(_ sender: UITextField) {
        c2HS.value = Double(sender.text!)!
    }
    
    @IBOutlet weak var c3G: UITextField!
    
    @IBOutlet weak var c3H: UITextField!
    
    @IBAction func c3HStep(_ sender: UIStepper) {
        c3H.text! = String(format: "%0.f", sender.value)
    }
    
    @IBOutlet weak var result: UILabel!
    
    @IBOutlet weak var c3HS: UIStepper!
    @IBAction func c3HC(_ sender: UITextField) {
        c3HS.value = Double(sender.text!)!
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.cgpa.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func compute(_ sender: UIButton) {
        
        cal = Calculator(Double(cgpa.text!)! , Double(chrsf.text!)!, Double(c1G.text!)!, Double(c2G.text!)!,  Double(c3G.text!)!,  Double(c1H.text!)!, Double(c2H.text!)!, Double(c3H.text!)!)
        result.text! = "Total GPA: \(cal.computeCGPA())\nThis Semister GPA:\(cal.computeGPA())"
        
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        return true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        //UITextField.resignFirstResponder()
    }

}

