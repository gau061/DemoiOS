//
//  ECOMCustomView.swift
//  SampleLoginFlowApp
//
//  Created by Gaurav Mehta on 30/05/17.
//  Copyright © 2017 Tatwamasi Technologies Solutions. All rights reserved.
//

import UIKit

@IBDesignable
class CustomView: UIView {
    
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
    @IBInspectable var circularRounded: Bool = false {
        didSet {
            layer.cornerRadius = circularRounded ? bounds.size.height/2 : 0
            cornerRadius = layer.cornerRadius
            
        }
        
    }
    
    @IBInspectable var borderColor: UIColor? {
        didSet {
            layer.borderColor = borderColor?.cgColor
        }
    }
    
    
    @IBInspectable var dropShadow: Bool = false {
        didSet {
            layer.shadowColor = UIColor.white.cgColor
            layer.shadowOpacity = 1
            layer.shadowOffset = CGSize.zero
            layer.shadowRadius = 2
        }
    }
}
