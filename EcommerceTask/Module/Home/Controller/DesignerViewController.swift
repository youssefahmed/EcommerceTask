//
//  DesignerViewController.swift
//  EcommerceTask
//
//  Created by mac on 6/20/20.
//  Copyright © 2020 Mohamed Bakr. All rights reserved.
//

import UIKit

class DesignerViewController: UIViewController {

    @IBOutlet weak var designerCollectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        SetUpUI()

    }
    
    func SetUpUI()  {
        designerCollectionView.delegate = self
        designerCollectionView.dataSource = self
        let layout = UICollectionViewFlowLayout()
        designerCollectionView.collectionViewLayout = layout
        
    }
    
    
}

extension DesignerViewController : UICollectionViewDelegate{
   
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        designerCollectionView.deselectItem(at: indexPath, animated: true)
        print("You Tapped Me")
    }
}

extension DesignerViewController : UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
         return 12
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = designerCollectionView.dequeueReusableCell(withReuseIdentifier: DesignerCell.identifire, for: indexPath) as! DesignerCell
//        cell.configure(with: UIImage(named: "14")!)
        return cell
    }
    }
    
extension DesignerViewController : UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
       let kWhateverHeightYouWant = 150
        return CGSize(width: collectionView.bounds.size.width * 0.31, height: CGFloat(kWhateverHeightYouWant))
        }
    
    }

