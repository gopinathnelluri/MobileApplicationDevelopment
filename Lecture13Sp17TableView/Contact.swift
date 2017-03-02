//
//  Contact.swift
//  Lecture13Sp17TableView
//
//  Created by  on 2/28/17.
//  Copyright © 2017 uhcl. All rights reserved.
//

import Foundation

class Contact {
    var fname: String
    var lname: String
    var phone: String
    var email: String
    var address: String
    
    init(){
        fname = ""
        lname = ""
        phone = ""
        email = ""
        address = ""
    }
    
    init(_ fn : String, _ ln : String, _ p : String, _ e : String , _ a : String){
        fname = fn
        lname = ln
        phone = p
        email = e
        address = a
    }
    
    init(fname : String, lname : String, phone : String, email : String , address : String){
        self.fname = fname
        self.lname = lname
        self.phone = phone
        self.email = email
        self.address = address
    }

    func DisplayFullName(){
        print("\(fname) \(lname)")
    }
    
    func fullName() -> String{
        return "\(fname) \(lname)"
    }
    
    func contactInfo() -> String{
        return "Name: \(fname) \(lname)\nPhone: \(phone)\nEmail: \(email), Address: \(address)"
    }
}
