//
//  CustomerServiceViewController.swift
//  EcommerceTask
//
//  Created by mac on 7/14/20.
//  Copyright © 2020 Mohamed Bakr. All rights reserved.
//

import UIKit

class CustomerServiceViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextFieldX!
    @IBOutlet weak var problemTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        emailTextField.toStyledText()
        problemTextField.toStyledText()
    }
}

extension UITextField {
    func toStyledText() { // Give Round Border and Left Placholder Padding
        self.layer.masksToBounds = true
        self.layer.cornerRadius = 18
        self.layer.borderWidth = 0.5
        self.layer.borderColor = UIColor.gray.cgColor
        self.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: 0))
        self.leftViewMode = UITextField.ViewMode.always
    }
}
