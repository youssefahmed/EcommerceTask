//
//  UITextFieldX.swift
//  EcommerceTask
//
//  Created by mac on 6/17/20.
//  Copyright © 2020 Mohamed Bakr. All rights reserved.
//

import UIKit

class UITextFieldX: UITextField {

    class MyCustomTextField : UITextField {
        required init?(coder aDecoder: NSCoder) {
            super.init(coder: aDecoder)
            self.layer.cornerRadius = 5.0
            self.layer.borderColor = UIColor.red.cgColor
            self.layer.borderWidth = 1.5
            self.backgroundColor = UIColor.blue
            self.tintColor = UIColor.white
        }
        
        
    }
}
