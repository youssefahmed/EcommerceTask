//
//  TabBarViewController.swift
//  CPS-School
//
//  Created by Mohamed Bakr on 3/29/20.
//  Copyright © 2020 Mohamed Bakr. All rights reserved.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    var tabBarIteam = UITabBarItem()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedString.Key.foregroundColor: #colorLiteral(red: 0.8706880212, green: 0.6874789596, blue: 0.6208494306, alpha: 1)], for: .selected)
        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.darkGray], for: .normal)
        self.tabBar.isTranslucent = false
        self.tabBar.barTintColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        UITabBar.appearance().layer.borderWidth = 0.5
    
        let selectedImageAdd = UIImage(named: "home")?.withRenderingMode(.alwaysOriginal)
        let DeSelectedImageAdd = UIImage(named: "home")?.withRenderingMode(.alwaysOriginal)
        tabBarIteam = (self.tabBar.items?[0])!
        tabBarIteam.image = DeSelectedImageAdd
        tabBarIteam.selectedImage = selectedImageAdd?.coloredImage(color: #colorLiteral(red: 0.8706880212, green: 0.6874789596, blue: 0.6208494306, alpha: 1)).withRenderingMode(.alwaysOriginal)
        tabBarIteam.title = "Home"
        
        let selectedProductImage =  UIImage(named: "products")?.withRenderingMode(.alwaysOriginal)
        let deselectedProductImage = UIImage(named: "products")?.withRenderingMode(.alwaysOriginal)
        tabBarIteam = (self.tabBar.items?[1])!
        tabBarIteam.image = deselectedProductImage
        tabBarIteam.selectedImage = selectedProductImage?.coloredImage(color: #colorLiteral(red: 0.8706880212, green: 0.6874789596, blue: 0.6208494306, alpha: 1)).withRenderingMode(.alwaysOriginal)
        tabBarIteam.title = "Products"

        
        let selectedImageStores =  UIImage(named: "stores")?.withRenderingMode(.alwaysOriginal)
        let deselectedImageStores = UIImage(named: "stores")?.withRenderingMode(.alwaysOriginal)
        tabBarIteam = (self.tabBar.items?[2])!
        tabBarIteam.image = deselectedImageStores
        tabBarIteam.selectedImage = selectedImageStores?.coloredImage(color: #colorLiteral(red: 0.8706880212, green: 0.6874789596, blue: 0.6208494306, alpha: 1)).withRenderingMode(.alwaysOriginal)
        tabBarIteam.title = "Stores"
       
        
        let selectedImageDesigners =  UIImage(named: "designers")?.withRenderingMode(.alwaysOriginal)
        let deselectedImageDesigners = UIImage(named: "designers")?.withRenderingMode(.alwaysOriginal)
        tabBarIteam = (self.tabBar.items?[3])!
        tabBarIteam.image = deselectedImageDesigners
        tabBarIteam.selectedImage = selectedImageDesigners?.coloredImage(color: #colorLiteral(red: 0.8706880212, green: 0.6874789596, blue: 0.6208494306, alpha: 1)).withRenderingMode(.alwaysOriginal)
        tabBarIteam.title = "Designers"
        
        
        let selectedImageMore =  UIImage(named: "more")?.withRenderingMode(.alwaysOriginal)
        let deselectedImageMore = UIImage(named: "more")?.withRenderingMode(.alwaysOriginal)
        tabBarIteam = (self.tabBar.items?[4])!
        tabBarIteam.image = deselectedImageMore
        tabBarIteam.selectedImage = selectedImageMore?.coloredImage(color: #colorLiteral(red: 0.8706880212, green: 0.6874789596, blue: 0.6208494306, alpha: 1)).withRenderingMode(.alwaysOriginal)
        tabBarIteam.title = "More"
        
        
        self.selectedIndex = 0
      
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

extension UIImage {
    
    func coloredImage(color: UIColor) -> UIImage {
        
        let backgroundSize = self.size
        UIGraphicsBeginImageContextWithOptions(backgroundSize, false, UIScreen.main.scale)
        
        let ctx = UIGraphicsGetCurrentContext()!
        
        var backgroundRect=CGRect()
        backgroundRect.size = backgroundSize
        backgroundRect.origin.x = 0
        backgroundRect.origin.y = 0
        
        var r:CGFloat = 0
        var g:CGFloat = 0
        var b:CGFloat = 0
        var a:CGFloat = 0
        color.getRed(&r, green: &g, blue: &b, alpha: &a)
        ctx.setFillColor(red: r, green: g, blue: b, alpha: a)
        ctx.fill(backgroundRect)
        
        var imageRect = CGRect()
        imageRect.size = self.size
        imageRect.origin.x = (backgroundSize.width - self.size.width) / 2
        imageRect.origin.y = (backgroundSize.height - self.size.height) / 2
        
        // Unflip the image
        ctx.translateBy(x: 0, y: backgroundSize.height)
        ctx.scaleBy(x: 1.0, y: -1.0)
        
        ctx.setBlendMode(.destinationIn)
        ctx.draw(self.cgImage!, in: imageRect)
        
        let newImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return newImage!
    }
 
}

