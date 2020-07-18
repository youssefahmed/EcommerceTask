//
//  RegistrationViewController.swift
//  EcommerceTask
//
//  Created by mac on 6/20/20.
//  Copyright © 2020 Mohamed Bakr. All rights reserved.
//

import UIKit

class RegistrationViewController: UIViewController {

    @IBOutlet weak var firstNameLabrl: UITextField!
    @IBOutlet weak var LastName: UITextFieldX!
    @IBOutlet weak var PhoneNumber: UITextFieldX!
    @IBOutlet weak var EmailField: UITextFieldX!
    @IBOutlet weak var PasswordLabel: UITextFieldX!
    @IBOutlet weak var ConfirmPassword: UITextFieldX!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        firstNameLabrl.toStyledTextField()
        LastName.toStyledTextField()
        PhoneNumber.toStyledTextField()
        EmailField.toStyledTextField()
        PasswordLabel.toStyledTextField()
        ConfirmPassword.toStyledTextField()
        

        

    }
}

extension UITextField {
    func toStyledTextField() { // Give Round Border and Left Placholder Padding
        self.layer.masksToBounds = true
        self.layer.cornerRadius = 18
        self.layer.borderWidth = 0.5
        self.layer.borderColor = UIColor.gray.cgColor
        self.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: 0))
        self.leftViewMode = UITextField.ViewMode.always
    }
}
