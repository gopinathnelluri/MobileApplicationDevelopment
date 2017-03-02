//
//  ContactDBModel.swift
//  Lecture13Sp17TableView
//
//  Created by  on 2/28/17.
//  Copyright © 2017 uhcl. All rights reserved.
//

import Foundation
class ContactDBModel {
    var contacts: Array<Contact>
    
    init ()
    {
        contacts = Array<Contact> ()
        loadDatabase()
    }
    
    init (_ choice: Int)
    {
        contacts = Array<Contact> ()
        loadDatabase()
    }
    
    func loadDatabase () {
        contacts.append(Contact(fname: "Bob", lname: "Smith", phone: "111-222-3333", email: "bob@uhcl.edu", address: "2700 Bay Area Blvd Houston, TX 77058"))
        contacts.append(Contact(fname: "Jim", lname: "Miller", phone: "222-333-4444", email: "jim@uhcl.edu", address: "2701 Bay Area Blvd Houston, TX 77058"))
        
        contacts.append(Contact(fname: "George", lname: "Bush", phone: "333-444-555", email: "george@uhcl.edu", address: "2702 Bay Area Blvd Houston, TX 77058"))
    }
    
    func contactAtIndex(_ idx: Int) -> Contact {
        return contacts[idx]
    }
    
    func deleteContactAtIndex(_ idx:Int){
        contacts.remove(at: idx)
        
    }
    
    func count() -> Int {
        return contacts.count
    }
    
    func addContact(_ c:Contact){
        contacts.append(Contact(fname:c.fname, lname:c.lname, phone:c.phone, email: c.email, address: c.address))
    }
    
}
