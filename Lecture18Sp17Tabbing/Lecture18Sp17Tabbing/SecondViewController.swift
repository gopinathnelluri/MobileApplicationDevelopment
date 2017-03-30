//
//  SecondViewController.swift
//  Lecture18Sp17Tabbing
//
//  Created by  on 3/30/17.
//  Copyright © 2017 uhcl. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    var second = 10
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let del = UIApplication.shared.delegate as! AppDelegate
        print(del.integer)
        
        let tab1 = self.tabBarController?.viewControllers?[0] as! FirstViewController
        print(tab1.first.description)
        
        print("The integer is \(del.integer)")
        second += 1
        print("The value of second \(second)")

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

