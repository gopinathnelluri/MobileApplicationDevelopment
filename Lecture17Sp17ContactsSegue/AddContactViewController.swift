//
//  AddContactViewController.swift
//  Lecture13Sp17TableView
//
//  Created by  on 3/28/17.
//  Copyright © 2017 uhcl. All rights reserved.
//

import UIKit

class AddContactViewController: UIViewController {

    var contact: Contact!
    
    @IBOutlet weak var fname: UITextField!
    
    
    @IBOutlet weak var lname: UITextField!
    
    
    @IBOutlet weak var email: UITextField!
    
    
    
    @IBOutlet weak var phone: UITextField!
    
    @IBOutlet weak var address: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        contact = Contact(fname: fname.text!,
                          lname: lname.text!,
                          phone: phone.text!,
                          email: email.text!,
                          address:address.text!)
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
