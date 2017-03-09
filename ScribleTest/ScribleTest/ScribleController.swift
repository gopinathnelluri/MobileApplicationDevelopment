//
//  ScribleController.swift
//  ScribleTest
//
//  Created by Gopinath Nelluri on 3/9/17.
//  Copyright © 2017 Gopinath Nelluri. All rights reserved.
//

import UIKit

@IBDesignable

class ScribleController: UIView {

    var color = UIColor.red {
        didSet {
        setNeedsDisplay()
        }
    }
    var fillColor = UIColor.blue
    var linewidth = 5.0 {
        didSet {
        setNeedsDisplay()
        }
    }
    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    
     
    override func draw(_ rect: CGRect) {
        
        
        color.set()
        
        //fillColor.set()
        
        let rectangle = CGRect(x: 0, y: 0, width: 100 , height: 100)
        let fillRectangle = CGRect(x: 5, y: 5, width: 90, height: 90)
        
        let context : CGContext = UIGraphicsGetCurrentContext()!
        context.setStrokeColor(red: 0, green: 1, blue: 0, alpha: 1)
        
        context.stroke(rectangle)
        UIRectFill(fillRectangle)
        
        
        //
        fillColor.set()
        context.setLineWidth(CGFloat(linewidth))
        context.move(to: CGPoint(x: 200, y: 200))
        context.addLine(to: CGPoint(x:250, y: 200))
        context.addLine(to: CGPoint(x:250, y: 250))
        context.addLine(to: CGPoint(x:200, y: 250))
        context.closePath()
        context.strokePath()
        
        //draw biz
        
        
        
        let path = UIBezierPath()
        path.lineWidth = CGFloat(linewidth)
        path.move(to: CGPoint(x: 100, y: 400))
        path.addLine(to: CGPoint(x: 150, y: 400))
        path.addLine(to: CGPoint(x: 150, y: 450))
        path.addLine(to: CGPoint(x: 100, y: 450))
        
        path.close()
        path.stroke()
        
        UIColor.green.set()
        path.fill()
        

    }
 

}
