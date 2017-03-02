//
//  ScribbleView.swift
//  Lecture14Sp17 Scribble App
//
//  Created by  on 3/2/17.
//  Copyright © 2017 uhcl. All rights reserved.
//

import UIKit

@IBDesignable


class ScribbleView: UIView {
    

    @IBInspectable
    var color = UIColor.red {
        didSet {
            setNeedsDisplay()
        }
    }
    
    @IBInspectable
    var fillcolor = UIColor.green {
        didSet {
            setNeedsDisplay()
        }
    }

    
    @IBInspectable
    var lineWidth : CGFloat = 5 {
        didSet {
            setNeedsDisplay()
        }
    }

    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
        color.set()
        
        //I am planning on drawing something
        let rectangle  = CGRect(x: 100, y: 100, width: 40, height: 40)
        let fillRect = CGRect(x: 101, y: 101, width: 38, height: 38)
        
        //grab the pallet and brush
        
        let context : CGContext = UIGraphicsGetCurrentContext()!
        context.setStrokeColor(red: 0, green: 0, blue: 0, alpha: 0.5)
        
        //draw
        context.stroke(rectangle)
        UIRectFill(fillRect)
        
        
        // drawing line now
        color = UIColor.blue
        color.set()
        
        context.setLineWidth(2.0)
        context.move(to: CGPoint(x:50, y:50))
        context.addLine(to: CGPoint(x:200, y:200))
        context.strokePath()
        
        
        
        //drawing another thing
        
        let path = UIBezierPath()
        path.lineWidth = lineWidth
        path.move(to: CGPoint(x: 50, y:100))
        path.addLine(to: CGPoint(x: 90, y:150))
        path.addLine(to: CGPoint(x: 40, y:140))
        path.addLine(to: CGPoint(x: 20, y:120))
        path.close()
        path.stroke()
        
        fillcolor.set()
        path.fill()
        
    }
    
    

}
