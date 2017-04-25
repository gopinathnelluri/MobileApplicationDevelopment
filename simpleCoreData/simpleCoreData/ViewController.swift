//
//  ViewController.swift
//  simpleCoreData
//
//  Created by  on 4/25/17.
//  Copyright © 2017 uhcl. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {

    
    @IBOutlet weak var first: UITextField!
    
    @IBOutlet weak var last: UITextField!
    
    @IBOutlet weak var findLast: UITextField!
    
    @IBOutlet weak var fullname: UILabel!
    
    var appDel = UIApplication.shared.delegate as! AppDelegate
    var context : NSManagedObjectContext!
    
    
    @IBAction func insert(_ sender: UIButton) {
        var student = Student(context: context)
        student.first = first.text!
        student.last = last.text!
        do{
            try appDel.saveContext()
        }catch _ {}
        
    }
    
    @IBAction func lookup(_ sender: UIButton) {
        let request = NSFetchRequest<NSFetchRequestResult>.self
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

