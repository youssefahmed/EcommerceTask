//
//  MoreViewController.swift
//  EcommerceTask
//
//  Created by mac on 6/20/20.
//  Copyright © 2020 Mohamed Bakr. All rights reserved.
//

import UIKit

class MoreViewController: UIViewController {

    let moreText: [String] = ["Cart List","Saved Items","Change Language","Customer Support","Rate","Suggestion"]
    let moreImage: [UIImage] = [#imageLiteral(resourceName: "icons"),#imageLiteral(resourceName: "heart"),#imageLiteral(resourceName: "global"),#imageLiteral(resourceName: "support"),#imageLiteral(resourceName: "rate"),#imageLiteral(resourceName: "suggest")]
    
 @IBOutlet weak var moreTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    
    func setup()  {
        
        moreTableView.delegate = self
        moreTableView.dataSource = self
        
    }
    
}

extension MoreViewController : UITableViewDataSource,UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return 6
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = moreTableView.dequeueReusableCell(withIdentifier: "moreCell", for: indexPath) as!
        MoreCell
        cell.moreLabel.text = moreText[indexPath.row]
        cell.moreImage.image = moreImage[indexPath.row]

        return cell
        
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.row {
            
        case 3: let storyboard = UIStoryboard.init(name: "More", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "CustomerServiceViewController") as! CustomerServiceViewController
        self.navigationController?.pushViewController(vc, animated: true)
    
        case 5: let storyboard = UIStoryboard.init(name: "More", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "SuggestViewController") as!
        SuggestViewController
              self.navigationController?.pushViewController(vc, animated: true)
        default:
            break;
        }
    }
}
    

