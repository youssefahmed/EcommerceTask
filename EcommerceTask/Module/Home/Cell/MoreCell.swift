//
//  MoreCell.swift
//  EcommerceTask
//
//  Created by mac on 6/23/20.
//  Copyright © 2020 Mohamed Bakr. All rights reserved.
//

import UIKit

class MoreCell: UITableViewCell {

    @IBOutlet weak var moreArrow: UIImageView!
    @IBOutlet weak var moreImage: UIImageView!
    @IBOutlet weak var moreLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
