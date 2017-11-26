//
//  CustomTextInputView.swift
//  SampleLoginFlowApp
//
//  Created by Gaurav Mehta on 10/10/17.
//  Copyright © 2017 Apple. All rights reserved.
//

import UIKit

@IBDesignable
class CustomBtnView: UIView {
    
    @IBOutlet weak var imageView: CustomImageView!
    
    @IBInspectable var image: UIImage? {
        get {
            return imageView.image
        }
        set(image) {
            imageView.image = image
        }
    }
    
    
    @IBOutlet weak var textLabel: CustomLabel!
    
    @IBInspectable var text: String? {
        get {
            return textLabel.text
        }
        set(text) {
            textLabel.text = text
        }
    }
    
    @IBOutlet weak var button: CustomButton!
    
    @IBInspectable var btnText: String? {
        get {
            return button.title(for: .normal)
        }
        set(text) {
            button.setTitle(btnText, for: .normal)
        }
    }

    
    
    
    // MARK: - Initializers
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupView()
    }
    
    // MARK: - Private Helper Methods
    
    // Performs the initial setup.
    private func setupView() {
        let view = viewFromNibForClass()
        view.frame = bounds
        
        // Auto-layout stuff.
        view.autoresizingMask = [
            UIViewAutoresizing.flexibleWidth,
            UIViewAutoresizing.flexibleHeight
        ]
        
        // Show the view.
        addSubview(view)
    }
    
    // Loads a XIB file into a view and returns this view.
    private func viewFromNibForClass() -> UIView {
        
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: String(describing: type(of: self)), bundle: bundle)
        let view = nib.instantiate(withOwner: self, options: nil).first as! UIView
        
        return view
    }
}
