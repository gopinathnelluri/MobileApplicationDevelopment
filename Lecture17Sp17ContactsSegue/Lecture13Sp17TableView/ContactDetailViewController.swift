//
//  ContactDetailViewController.swift
//  Lecture13Sp17TableView
//
//  Created by  on 3/23/17.
//  Copyright © 2017 uhcl. All rights reserved.
//

import UIKit

class ContactDetailViewController: UIViewController {

    
    var contact:Contact!
    
    @IBOutlet weak var firstName: UITextField!
    
    @IBOutlet weak var lastName: UITextField!
    
    @IBOutlet weak var email: UITextField!
    
    
    @IBOutlet weak var phone: UITextField!
    
    
    @IBOutlet weak var address: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        firstName.text! = contact.fname
        lastName.text! = contact.lname
        email.text! = contact.email
        phone.text! = contact.phone
        address.text! = contact.address
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    

}
