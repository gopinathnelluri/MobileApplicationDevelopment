//
//  ViewController.swift
//  ScribleTest
//
//  Created by Gopinath Nelluri on 3/9/17.
//  Copyright © 2017 Gopinath Nelluri. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ScribbleView: ScribleController!
    
    @IBAction func click(_ sender: AnyObject) {
        if ScribbleView.color == UIColor.red {
            ScribbleView.color = UIColor.blue
        } else if ScribbleView.color == UIColor.blue {
            ScribbleView.color = UIColor.green
        } else if ScribbleView.color == UIColor.green {
            ScribbleView.color = UIColor.red
        }
        
        ScribbleView.color.set()
        
        ScribbleView.linewidth += 1
        
        //ScribbleView.setNeedsDisplay()
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

