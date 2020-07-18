//
//  ProductImageViewerController.swift
//  EcommerceTask
//
//  Created by mac on 7/9/20.
//  Copyright © 2020 Mohamed Bakr. All rights reserved.
//

import UIKit

class ProductImageViewerController: UIViewController {

    var imageName: String!
    @IBOutlet weak var imageDetails: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupImageView()
}
    private func setupImageView() {
      guard let name = imageName else { return }
      
      if let image = UIImage(named: name) {
        imageDetails.image = image
      }
    }

}
