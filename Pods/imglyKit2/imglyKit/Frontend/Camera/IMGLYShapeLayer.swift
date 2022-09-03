//
//  IMGLYShapeLayer.swift
//  imglyKit
//
//  Created by Sascha Schwabbauer on 26/06/15.
//  Copyright (c) 2015 9elements GmbH. All rights reserved.
//

import QuartzCore

class IMGLYShapeLayer: CAShapeLayer {
    override func action(forKey event: String) -> CAAction? {
        if event == "path" {
            let animation = CABasicAnimation(keyPath: event)
            animation.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeOut)
            return animation
        }
        
        return super.action(forKey: event)
    }
}
