//
//  ViewController.swift
//  happySp2017
//
//  Created by  on 4/25/17.
//  Copyright © 2017 uhcl. All rights reserved.
//

import UIKit

class ViewController: UIViewController, FaceViewDataSource {

    
    @IBOutlet var faceView: FaceView!{
        didSet{
            faceView.dataSource = self
            faceView.addGestureRecognizer(UIPinchGestureRecognizer(target: faceView,action: "scale:"))
        }
    }
    
    var happiness : Int = 0 {
        didSet{
            happiness = min(max(happiness,0),100)
            updateUI()
        }
    }
    
    fileprivate struct Constants{
        static let happinessGestureScale : CGFloat = 4
    }
    
    @IBAction func cangeColor(_ sender: UITapGestureRecognizer) {
        switch sender.state {
        case .ended: fallthrough
        case .changed:
            if faceView.color == UIColor.red{
                faceView.color = UIColor.green
            } else if faceView.color == UIColor.blue{
                faceView.color = UIColor.red
            } else {
                faceView.color = UIColor.blue
            }
        default: break
        }
    }
    
    @IBAction func changeHappiness(_ sender: UIPanGestureRecognizer) {
        
        if sender.state == .changed {
            let translation = sender.translation(in: faceView)
            let happinessChange = -Int (translation.y / Constants.happinessGestureScale)
            if happinessChange != 0{
                happiness += happinessChange
                sender.setTranslation(CGPoint.zero, in: faceView)
            }
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func updateUI(){
        faceView.setNeedsDisplay()
    }

    func smilinessForFaceView(_ sender: FaceView) -> Double? {
        return Double(happiness - 50)/50
    }
    
}

