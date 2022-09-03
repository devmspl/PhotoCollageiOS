//
//  UIImageExtension.swift
//  imglyKit
//
//  Created by Sascha Schwabbauer on 07/04/15.
//  Copyright (c) 2015 9elements GmbH. All rights reserved.
//

import UIKit
import CoreGraphics

/**
Adds framework-related methods to `UIImage`.
*/
public extension UIImage {
    /// Returns a copy of the image, taking into account its orientation
    var imgly_normalizedImage: UIImage {
        if imageOrientation == .up {
            return self
        }
        
        return imgly_normalizedImageOfSize(size)
    }
    
    /**
    Returns a rescaled copy of the image, taking into account its orientation
    
    - parameter size: The size of the rescaled image.
    
    - returns: The rescaled image.
    
    :discussion: The image will be scaled disproportionately if necessary to fit the bounds specified by the parameter.
    */
    func imgly_normalizedImageOfSize(_ size: CGSize) -> UIImage {
        UIGraphicsBeginImageContextWithOptions(size, false, scale)
        draw(in: CGRect(origin: CGPoint.zero, size: size))
        let normalizedImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return normalizedImage!
    }
}

extension UIImage.Orientation: CustomStringConvertible {
    public var description: String {
        switch self {
        case .up: return "Up"
        case .down: return "Down"
        case .left: return "Left"
        case .right: return "Right"
        case .upMirrored: return "UpMirrored"
        case .downMirrored: return "DownMirrored"
        case .leftMirrored: return "LeftMirrored"
        case .rightMirrored: return "RightMirrored"
        default: return "Unknown"
        }
    }
}
