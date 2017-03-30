//
//  FirstViewController.swift
//  Lecture18Sp17Tabbing
//
//  Created by  on 3/30/17.
//  Copyright © 2017 uhcl. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    var first = 10
    
    override func viewDidAppear(_ animated: Bool) {
        let del = UIApplication.shared.delegate as! AppDelegate
        print(del.integer)
        
        let tab2 = self.tabBarController?.viewControllers?[1] as! SecondViewController

        print(tab2.second.description)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let del = UIApplication.shared.delegate as! AppDelegate
        
        del.integer = 1000
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }


}

