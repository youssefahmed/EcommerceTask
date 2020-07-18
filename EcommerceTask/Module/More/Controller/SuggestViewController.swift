//
//  SuggestViewController.swift
//  EcommerceTask
//
//  Created by mac on 7/14/20.
//  Copyright © 2020 Mohamed Bakr. All rights reserved.
//

import UIKit

class SuggestViewController: UIViewController {

   
    @IBOutlet weak var nameText: UITextField!
    @IBOutlet weak var emailLabel: UITextFieldX!
    @IBOutlet weak var phoneLabel: UITextFieldX!
    @IBOutlet weak var suggestText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameText.suggestStyledText()
        emailLabel.suggestStyledText()
        phoneLabel.suggestStyledText()
        suggestText.suggestStyledText()
        // Do any additional setup after loading the view.
    }
    


}

extension UITextField {
    func suggestStyledText() { // Give Round Border and Left Placholder Padding
        self.layer.masksToBounds = true
        self.layer.cornerRadius = 18
        self.layer.borderWidth = 0.5
        self.layer.borderColor = UIColor.gray.cgColor
        self.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: 0))
        self.leftViewMode = UITextField.ViewMode.always
    }
}
