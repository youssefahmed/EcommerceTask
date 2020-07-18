//Created by Real Life Swift on 22/12/2018

import UIKit


class ProductViewController: UIViewController {

  
  
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
      super.viewDidLoad()
        SetUpUI()
    }
    
   func SetUpUI()  {
          collectionView.delegate = self
          collectionView.dataSource = self
          let layout = UICollectionViewFlowLayout()
          collectionView.collectionViewLayout = layout
          
      }
      
      
  }

  extension ProductViewController : UICollectionViewDelegate{
     
      func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
          collectionView.deselectItem(at: indexPath, animated: true)
          print("You Tapped Me")
      }
  }

  extension ProductViewController : UICollectionViewDataSource {
      func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
           return 12
      }
      
      func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ProductCell.identifire, for: indexPath) as! ProductCell
          return cell
      }
      }
      
  extension ProductViewController : UICollectionViewDelegateFlowLayout {
      
      func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
         let kWhateverHeightYouWant = 200
        return CGSize(width: collectionView.bounds.size.width * 0.48, height: CGFloat(kWhateverHeightYouWant))
          }
      
      }

