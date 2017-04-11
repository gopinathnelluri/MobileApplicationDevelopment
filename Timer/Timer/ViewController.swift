//
//  ViewController.swift
//  Timer
//
//  Created by  on 4/6/17.
//  Copyright © 2017 uhcl. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var clear: UIBarButtonItem!
    

    @IBOutlet weak var play: UIBarButtonItem!
    
    
    @IBOutlet weak var pause: UIBarButtonItem!
    

    
    var timer = Timer()
    var counter = 0
    let timeInterval = 0.1
 
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

