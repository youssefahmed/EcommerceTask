//
//  CartListViewController.swift
//  EcommerceTask
//
//  Created by mac on 7/18/20.
//  Copyright © 2020 Mohamed Bakr. All rights reserved.
//

import UIKit

class CartListViewController: UIViewController {

    @IBOutlet weak var cartListCollectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        SetUpUI() 

    }

    
    func SetUpUI()  {
          cartListCollectionView.delegate = self
          cartListCollectionView.dataSource = self
          let layout = UICollectionViewFlowLayout()
          cartListCollectionView.collectionViewLayout = layout
          
      }
      
   
}

extension CartListViewController : UICollectionViewDelegate{
   
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        cartListCollectionView.deselectItem(at: indexPath, animated: true)
        print("You Tapped Me")
    }
}

extension CartListViewController : UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
         return 12
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = cartListCollectionView.dequeueReusableCell(withReuseIdentifier: CartListCell.identifire, for: indexPath) as! CartListCell
//        cell.configure(with: UIImage(named: "14")!)
        return cell
    }
    }
    
extension CartListViewController : UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
       let kWhateverHeightYouWant = 150
        return CGSize(width: collectionView.bounds.size.width * 0.95, height: CGFloat(kWhateverHeightYouWant))
//        }
    
    }
}

