//
//  ViewController.swift
//  Lecture13Sp17TableView
//
//  Created by  on 2/28/17.
//  Copyright © 2017 uhcl. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    var contacts : ContactDBModel!
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Contacts"
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contacts.count()
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let contactIdentifier = "ContactCell"
        let cell = tableView.dequeueReusableCell(withIdentifier: contactIdentifier, for: indexPath)
        let contact = contacts.contactAtIndex(indexPath.row)
        cell.textLabel!.text! = contact.fullName()
        cell.detailTextLabel!.text = contact.email
        cell.imageView!.image = UIImage(named: "/Users/nellurig/Desktop/gopi.jpg")
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let contact = contacts.contactAtIndex(indexPath.row)
        let alert = UIAlertController(title:"\(contact.fullName())", message: contact.contactInfo(),preferredStyle: .alert)
        alert.addAction(UIAlertAction(title:"Close", style: .default,handler: { _ in}))
        self.present(alert, animated: true, completion: {})
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        contacts = ContactDBModel()
        self.tableView.delegate = self
        self.tableView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

