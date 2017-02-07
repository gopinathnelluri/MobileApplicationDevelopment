//
//  ViewController.swift
//  FirstAppSp17
//
//  Created by  on 2/7/17.
//  Copyright © 2017 uhcl. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITextFieldDelegate{

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        name.becomeFirstResponder()
        self.name.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    
    
    //custome
    @IBOutlet weak var name: UITextField!

    @IBOutlet weak var timeOfDay: UISegmentedControl!
    
    @IBOutlet weak var message: UILabel!
    
    @IBAction func showMessage(_ sender: UIButton) {
        var userName = "Stranger"
        if name.text != "" {
            userName = name.text!
        }
        
        
        if timeOfDay.selectedSegmentIndex == 0 {
                message.text = "Good morning, \(userName)"
        }
        else if timeOfDay.selectedSegmentIndex == 1 {
            message.text = "Good afternoon, \(userName)"
        }
        else if timeOfDay.selectedSegmentIndex == 2 {
            message.text = "Good evening, \(userName)"
        }
    }
    
    
    //hide keyboard on return
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == self.name {
            textField.resignFirstResponder()
        }
        return true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        name.resignFirstResponder()
        self.view.endEditing(true)
    }
    
}

