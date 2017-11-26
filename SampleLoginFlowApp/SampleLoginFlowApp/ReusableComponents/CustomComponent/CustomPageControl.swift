//
//  ECOMCustomPageControl.swift
//  SampleLoginFlowApp
//
//  Created by Gaurav Mehta on 15/06/17.
//  Copyright © 2017 Tatwamasi Technologies Solutions. All rights reserved.
//

import UIKit

@IBDesignable
class CustomPageControl: UIPageControl {
    
    @IBInspectable var cornerRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
            layer.masksToBounds = newValue > 0
        }
    }
    
    @IBInspectable var boderWidth: CGFloat {
        get {
            return layer.borderWidth
        }
        set {
            layer.borderWidth = newValue
            layer.masksToBounds = newValue > 0
        }
    }
    
    @IBInspectable var borderColor: UIColor? {
        didSet {
            layer.borderColor = borderColor?.cgColor
        }
    }
}

