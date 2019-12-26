//
//  CustomTextField.swift
//  TouristON
//
//  Created by Алишер Сагимбаев on 26.12.2019.
//  Copyright © 2019 Nathan. All rights reserved.
//

import UIKit

class CustomTextField: UITextField {
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return CGRect(x: bounds.origin.x + 81, y: bounds.origin.y + 13, width: bounds.width, height: bounds.height)
    }
    
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return CGRect(x: bounds.origin.x + 81, y: bounds.origin.y + 13, width: bounds.width, height: bounds.height)
    }
    
    override func placeholderRect(forBounds bounds: CGRect) -> CGRect {
         return CGRect(x: bounds.origin.x + 81, y: bounds.origin.y + 13, width: bounds.width, height: bounds.height)
    }
    
    override func clearButtonRect(forBounds bounds: CGRect) -> CGRect {
        return CGRect(x: bounds.origin.x + 300, y: bounds.origin.y + 40, width: 16, height: 16)
    }
}
