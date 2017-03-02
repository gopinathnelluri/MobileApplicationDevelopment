//
//  ViewController.swift
//  Lecture14Sp17 Scribble App
//
//  Created by  on 3/2/17.
//  Copyright © 2017 uhcl. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
/*
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
*/
    

    @IBOutlet weak var Scribble: ScribbleView!
    
    @IBAction func Adjust(_ sender: UIButton) {
        if Scribble.color == UIColor.red {
            Scribble.color = UIColor.green
        } else if Scribble.color == UIColor.green {
            Scribble.color = UIColor.blue
        } else if Scribble.color == UIColor.blue {
            Scribble.color = UIColor.red
        }
        
        if Scribble.fillcolor == UIColor.red {
            Scribble.fillcolor = UIColor.green
        } else if Scribble.fillcolor == UIColor.green {
            Scribble.fillcolor = UIColor.blue
        } else if Scribble.fillcolor == UIColor.blue {
            Scribble.fillcolor = UIColor.red
        }
        
        Scribble.color.set()
        Scribble.fillcolor.set()
        Scribble.lineWidth += 1
        
        
    }
    
}

