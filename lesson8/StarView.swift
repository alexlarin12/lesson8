//
//  StarView.swift
//  lesson8
//
//  Created by пользователь on 08/09/2019.
//  Copyright © 2019 Alex Larin. All rights reserved.
//

import UIKit

class StarView: UIView {

   
    override func draw(_ rect: CGRect) {
      super.draw(rect)
        
        self.backgroundColor = .red
        self.layer.cornerRadius = 50
        
        guard let context = UIGraphicsGetCurrentContext() else {return}
        context.setStrokeColor(UIColor.blue.cgColor)
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 0, y: 0))
        path.addLine(to: CGPoint(x: 100, y: 0))
        path.addLine(to: CGPoint(x: 100, y: 100))
        path.addLine(to: CGPoint(x: 0, y: 100))
      
        path.close()
        path.stroke()
        let layerr = CAShapeLayer()
        layerr.path = path.cgPath
        layerr.lineWidth = 7
        layerr.strokeColor = UIColor.blue.cgColor
        layerr.fillColor = UIColor.gray.cgColor
        layerr.strokeEnd = 0
        layer.addSublayer(layerr)
        let strokeStartAnimation = CABasicAnimation(keyPath: "strokeStart")
        strokeStartAnimation.fromValue = 0
        strokeStartAnimation.toValue = 1
        let strokeEndAnimation = CABasicAnimation(keyPath: "strokeEnd")
        strokeEndAnimation.fromValue = 0
        strokeEndAnimation.toValue = 2
        let animationGroup = CAAnimationGroup()
        animationGroup.duration = 2
        animationGroup.repeatCount = 7
        animationGroup.animations = [strokeStartAnimation, strokeEndAnimation]
        layerr.add(animationGroup, forKey: nil)
        
        
     
        
    }
 
}
