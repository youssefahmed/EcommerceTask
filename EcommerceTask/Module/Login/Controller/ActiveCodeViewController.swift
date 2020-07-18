//
//  ActiveCodeViewController.swift
//  EcommerceTask
//
//  Created by mac on 6/20/20.
//  Copyright © 2020 Mohamed Bakr. All rights reserved.
//

import UIKit

class ActiveCodeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func toPressActive(_ sender: Any) {
    
    let firstStoryBoard = UIStoryboard.init(name: "Home", bundle: nil)
                  let firstViewController = firstStoryBoard.instantiateViewController(withIdentifier: "TabBarViewController") as! TabBarViewController
                  navigationController?.pushViewController(firstViewController, animated: true)
    }
    
    
}
