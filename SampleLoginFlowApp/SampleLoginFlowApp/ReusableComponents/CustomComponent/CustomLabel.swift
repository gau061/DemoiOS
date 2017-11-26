//
//  ECOMCustomLabel.swift
//  SampleLoginFlowApp
//
//  Created by Gaurav Mehta on 6/20/17.
//  Copyright © 2017 Tatwamasi Technologies Solutions. All rights reserved.
//

import UIKit

class CustomLabel: UILabel {
    
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
}
