//
//  LoginViewController.swift
//  EcommerceTask
//
//  Created by mac on 6/20/20.
//  Copyright © 2020 Mohamed Bakr. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    @IBOutlet weak var PhoneNumber: UITextField!
    @IBOutlet weak var PasswordLabel: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        PhoneNumber.tTextField()
        PasswordLabel.tTextField()
        // Do any additional setup after loading the view.
    }
    

}

extension UITextField {
    func tTextField() { // Give Round Border and Left Placholder Padding
        self.layer.masksToBounds = true
        self.layer.cornerRadius = 18
        self.layer.borderWidth = 0.5
        self.layer.borderColor = UIColor.gray.cgColor
        self.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: 0))
        self.leftViewMode = UITextField.ViewMode.always
    }
}
