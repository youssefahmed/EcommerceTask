//
//  StoresViewController.swift
//  EcommerceTask
//
//  Created by mac on 6/20/20.
//  Copyright © 2020 Mohamed Bakr. All rights reserved.
//

import UIKit

class StoresViewController: UIViewController {

    @IBOutlet weak var storeCollectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()

        SetUpUI()  
        // Do any additional setup after loading the view.
    }
    
     func SetUpUI()  {
            storeCollectionView.delegate = self
            storeCollectionView.dataSource = self
            let layout = UICollectionViewFlowLayout()
            storeCollectionView.collectionViewLayout = layout
            
        }
        
        
    }

    extension StoresViewController : UICollectionViewDelegate{
       
        func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
            storeCollectionView.deselectItem(at: indexPath, animated: true)
            print("You Tapped Me")
        }
    }

    extension StoresViewController : UICollectionViewDataSource {
        func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
             return 12
        }
        
        func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            let cell = storeCollectionView.dequeueReusableCell(withReuseIdentifier: StoreCell.identifire, for: indexPath) as! StoreCell
    //        cell.configure(with: UIImage(named: "14")!)
            return cell
        }
        }
        
    extension StoresViewController : UICollectionViewDelegateFlowLayout {
        
        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
           let kWhateverHeightYouWant = 150
            return CGSize(width: collectionView.bounds.size.width * 0.31, height: CGFloat(kWhateverHeightYouWant))
            }
        
        }
